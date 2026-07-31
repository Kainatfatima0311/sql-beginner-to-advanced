SELECT *
FROM Users
WHERE Username = 'Ali'
AND Password = '12345';

SELECT *
FROM Users
WHERE Username = '' OR '1'='1'
AND Password = '';

SELECT *
FROM Users
WHERE Username = '' OR 1=1;