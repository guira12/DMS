/*
    pilot inserts
*/

INSERT INTO pilot (id, first_name, last_name, licence_number) VALUES ('3fa85f64-5717-4562-b3fc-2c963f66afa6', 'Laurent', 'GINA', 'LN-001');
INSERT INTO pilot (id, first_name, last_name, licence_number) VALUES ('3fa85f64-5717-4562-b3fc-2c963f66afa7', 'Sophie', 'FONCEK', 'LN-002');
INSERT INTO pilot (id, first_name, last_name, licence_number) VALUES ('3fa85f64-5717-4562-b3fc-2c963f66afa8', 'Agathe', 'FEELING', 'LN-003');
INSERT INTO pilot (id, first_name, last_name, licence_number) VALUES ('3fa85f64-5717-4562-b3fc-2c963f66afa9', 'Alice', 'MARTIN', 'LN-004');
INSERT INTO pilot (id, first_name, last_name, licence_number) VALUES ('3fa85f64-5717-4562-b3fc-2c963f66afaa', 'Bob', 'DUPONT', 'LN-005');
INSERT INTO pilot (id, first_name, last_name, licence_number) VALUES ('3fa85f64-5717-4562-b3fc-2c963f66afab', 'Charlie', 'LECLERC', 'LN-006');

/*
    drone inserts
*/

INSERT INTO drone (serial_number, model, status, weight_empty, max_weight, battery_level, last_maintenance_date, description) VALUES ('DRN-1001-A', 'DJI Phantom 4', 'READY_TO_USE', 1.38, 1.80, 92, '2025-01-12', 'General surveillance drone');

INSERT INTO drone (serial_number, model, status, weight_empty, max_weight, battery_level, last_maintenance_date, description) VALUES ('DRN-1002-B', 'Parrot Anafi', 'MAINTENANCE', 0.32, 0.60, 45, '2024-11-30', 'Needs propeller replacement');

INSERT INTO drone (serial_number, model, status, weight_empty, max_weight, battery_level, last_maintenance_date, description) VALUES ('DRN-1003-C', 'DJI Mavic 3', 'MANUFACTURING', 0.90, 1.20, 100, NULL, 'Currently being assembled');

INSERT INTO drone (serial_number, model, status, weight_empty, max_weight, battery_level, last_maintenance_date, description) VALUES ('DRN-1004-D', 'Autel EVO Lite+', 'DISCHARGED', 0.82, 1.50, 0, '2025-02-03', 'Battery empty, requires charging');

INSERT INTO drone (serial_number, model, status, weight_empty, max_weight, battery_level, last_maintenance_date, description) VALUES ('DRN-1005-E', 'Skydio 2+', 'READY_TO_USE', 0.80, 1.30, 76, '2025-01-20', 'Obstacle avoidance active');

INSERT INTO drone (serial_number, model, status, weight_empty, max_weight, battery_level, last_maintenance_date, description) VALUES ('DRN-1006-F', 'DJI Inspire 2', 'MAINTENANCE', 3.44, 4.25, 58, '2024-12-15', 'Firmware update required');
