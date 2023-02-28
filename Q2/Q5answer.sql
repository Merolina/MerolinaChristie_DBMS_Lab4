 #Q5) Display the Supplier details of who is supplying more than one product.
 #===========================================================
 SELECT * FROM supplier;
 SELECT * FROM product;
 SELECT * FROM supplier_pricing;
# IN the SUPP_ID col from the supplier_pricing table we can see each supplier supply more then one product
#===========================================================
  SELECT * FROM supplier_pricing HAVING COUNT(supp_id)>1;
#===========================================================
SELECT * FROM supplier_pricing GROUP BY SUPP_ID HAVING COUNT(SUPP_ID)>1;

SELECT sup.SUPP_ID, SUPP_NAME,SUPP_CITY,SUPP_PHONE FROM supplier AS sup
INNER JOIN
(SELECT * FROM supplier_pricing GROUP BY SUPP_ID HAVING COUNT(SUPP_ID)>1) AS sp
ON
sup.SUPP_ID = SP.SUPP_ID;
