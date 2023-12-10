
SELECT 
    zipcode, 
    COUNT(id) AS complaint_count
FROM 
    complaints 
WHERE 
    created_date BETWEEN '2022-10-01' AND '2023-09-30'
GROUP BY 
    zipcode
ORDER BY
    complaint_count DESC
