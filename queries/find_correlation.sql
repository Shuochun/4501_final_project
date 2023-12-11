
WITH RankedZipcodes AS (
    SELECT
        zillow.zipcode,
        AVG(zillow.price) AS average_rent,
        COUNT(DISTINCT tree.id) AS tree_count,
        COUNT(DISTINCT complaint.id) AS complaint_count,
        ROW_NUMBER() OVER (ORDER BY AVG(zillow.price) ASC) AS low_rank,
        ROW_NUMBER() OVER (ORDER BY AVG(zillow.price) DESC) AS high_rank
    FROM
        houses AS zillow
    JOIN
        trees AS tree ON zillow.zipcode = tree.zipcode
    JOIN
        complaints AS complaint ON zillow.zipcode = complaint.zipcode
    WHERE
        zillow.date >= '2023-01-01' AND zillow.date < '2023-02-01'
    GROUP BY
        zillow.zipcode
)
SELECT
    zipcode,
    CAST(average_rent AS NUMERIC(10, 2)) AS average_rent,
    tree_count,
    complaint_count
FROM
    RankedZipcodes
WHERE
    low_rank <= 5 OR high_rank <= 5;
