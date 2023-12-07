
SELECT 
    zipcode,
    COUNT(id) AS tree_count
FROM
    trees
GROUP BY 
    zipcode
ORDER BY
    tree_count DESC
LIMIT 10; 
