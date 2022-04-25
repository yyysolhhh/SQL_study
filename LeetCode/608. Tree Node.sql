SELECT pa.id, 
	CASE 
	WHEN pa.p_id IS NULL THEN 'Root' 
	WHEN ch.id IS NULL THEN 'Leaf' 
	ELSE 'Inner' 
	END AS type 
FROM Tree pa LEFT JOIN Tree ch 
ON pa.id = ch.p_id 
GROUP BY pa.id;

SELECT DISTINCT pa.id, 
	CASE 
	WHEN pa.p_id IS NULL THEN 'Root' 
	WHEN ch.id IS NULL THEN 'Leaf' 
	ELSE 'Inner' 
	END AS type 
FROM Tree pa LEFT JOIN Tree ch 
ON pa.id = ch.p_id;
