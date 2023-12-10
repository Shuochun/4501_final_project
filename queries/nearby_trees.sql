
SELECT
    id,
    spc_common,
    health,
    status,
    ST_AsText(geometry) AS coordinate_location
FROM
    trees
WHERE
    ST_DWithin(
        ST_GeomFromText('POINT(-73.96253174434912 40.80737875669467)', 4326),
        geometry,
        0.5 * 1609.34  -- 0.5 mile in meters
    );
