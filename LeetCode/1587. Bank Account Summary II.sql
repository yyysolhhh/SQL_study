SELECT U.name, SUM(T.amount) AS balance 
FROM Users U, Transactions T 
WHERE U.account = T.account 
GROUP BY T.account 
HAVING balance > 10000;
