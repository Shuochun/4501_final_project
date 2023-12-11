
SELECT
    z.zipcode,
    COUNT(*) AS tree_count
FROM
    trees AS t
JOIN
    zipcodes AS z ON ST_Within(t.geometry, z.geometry)
GROUP BY
    z.zipcode
ORDER BY
    tree_count DESC
LIMIT 10;
