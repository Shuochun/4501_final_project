
SELECT 
    zipcode, 
    COUNT(id) AS complaint_count
FROM 
    complaints 
GROUP BY 
    zipcode
ORDER BY
    complaint_count DESC;    
