CREATE INDEX "idx_severity" ON "hk_collisions_valid_sf" ("severity" ASC);
CREATE INDEX "idx_collision_type" ON "hk_collisions_valid_sf" ("collision_type" ASC);
CREATE INDEX "idx_collision_type_with_cycle" ON "hk_collisions_valid_sf" ("collision_type_with_cycle" ASC);
CREATE INDEX "idx_district" ON "hk_collisions_valid_sf" ("district" ASC);
CREATE INDEX "idx_weather" ON "hk_collisions_valid_sf" ("weather" ASC);
CREATE INDEX "idx_rain" ON "hk_collisions_valid_sf" ("rain" ASC);
CREATE INDEX "idx_natural_light" ON "hk_collisions_valid_sf" ("natural_light" ASC);
CREATE INDEX "idx_vehicle_movement" ON "hk_collisions_valid_sf" ("vehicle_movement" ASC);
CREATE INDEX "idx_junction_type" ON "hk_collisions_valid_sf" ("junction_type" ASC);
CREATE INDEX "idx_junction_control_type" ON "hk_collisions_valid_sf" ("junction_control_type" ASC);
CREATE INDEX "idx_crossing_control_type" ON "hk_collisions_valid_sf" ("crossing_control_type" ASC);
CREATE INDEX "idx_crossing_type_15m" ON "hk_collisions_valid_sf" ("crossing_type_15m" ASC);
CREATE INDEX "idx_precise_location" ON "hk_collisions_valid_sf" ("precise_location" ASC);
CREATE INDEX "idx_street_name" ON "hk_collisions_valid_sf" ("street_name" ASC);
CREATE INDEX "idx_street_name_2nd" ON "hk_collisions_valid_sf" ("street_name_2nd" ASC);
CREATE INDEX "idx_road_type" ON "hk_collisions_valid_sf" ("road_type" ASC);
CREATE INDEX "idx_structure_type" ON "hk_collisions_valid_sf" ("structure_type" ASC);
CREATE INDEX "idx_road_hierarchy" ON "hk_collisions_valid_sf" ("road_hierarchy" ASC);
CREATE INDEX "idx_road_ownership" ON "hk_collisions_valid_sf" ("road_ownership" ASC);
CREATE INDEX "idx_street_light" ON "hk_collisions_valid_sf" ("street_light" ASC);
CREATE INDEX "idx_road_surface" ON "hk_collisions_valid_sf" ("road_surface" ASC);
CREATE INDEX "idx_year_month" ON "hk_collisions_valid_sf" ("year_month" ASC);
CREATE INDEX "idx_vehicle_class_involved" ON "hk_collisions_valid_sf" ("vehicle_class_involved" ASC);
CREATE INDEX "idx_DC_full_name" ON "hk_collisions_valid_sf" ("DC_full_name" ASC);

pragma page_size = 524288;

vacuum;
