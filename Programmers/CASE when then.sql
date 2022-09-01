SELECT *,
CASE
	WHEN Price < 30 THEN '저렴'
    WHEN Price >=30 AND Price < 60 THEN '적당'
    WHEN Price >= 60 THEN '비쌈'
END AS Price2
FROM Products
WHERE CategoryID IN (3, 6)
ORDER BY SupplierID DESC;