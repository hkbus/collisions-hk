set -eu

curl https://raw.githubusercontent.com/Hong-Kong-Districts-Info/hktrafficcollisions/refs/heads/main/inst/app/data/data-manipulated/hk_collisions_valid_sf.gpkg -o hk_collisions_valid_sf.gpkg -s
indb=hk_collisions_valid_sf.gpkg
outdir=public/db
mkdir -p $outdir

# for chunked mode, we need to know the database size in bytes beforehand
bytes="$(stat --printf="%s" "$indb")"
# set chunk size to 10MiB (needs to be a multiple of the `pragma page_size`!)
serverChunkSize=$((10 * 1024 * 1024))
suffixLength=3
rm -f "$outdir/db.sqlite3"*
split "$indb" --bytes=$serverChunkSize "$outdir/db.sqlite3." --suffix-length=$suffixLength --numeric-suffixes

# set request chunk size to match page size
requestChunkSize="$(sqlite3 "$indb" 'pragma page_size')"

# write a json config
echo '
{
    "serverMode": "chunked",
    "requestChunkSize": '$requestChunkSize',
    "databaseLengthBytes": '$bytes',
    "serverChunkSize": '$serverChunkSize',
    "urlPrefix": "db.sqlite3.",
    "suffixLength": '$suffixLength'
}
' > "$outdir/config.json"
