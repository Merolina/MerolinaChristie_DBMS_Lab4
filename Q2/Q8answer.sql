# Que 8. Display customer name and gender whose names start or end with character 'A'.
SELECT * FROM customer AS c;
# Partial Match
# Names starting with A or names ending with A.
 
SELECT * FROM customer AS c WHERE (c.CUS_NAME LIKE  'A%' OR c.CUS_NAME LIKE  '%A');
