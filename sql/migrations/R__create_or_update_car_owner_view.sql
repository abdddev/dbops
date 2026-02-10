CREATE OR REPLACE VIEW car_owner_view AS
    SELECT
        c.id AS car_id,
        c.license_plate,
        c.color,
        o.name AS owner_name
    FROM
        car c
    JOIN
        owner o ON c.owner_id = o.owner_id;
