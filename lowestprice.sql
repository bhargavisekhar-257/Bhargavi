SELECT*FROM test1.filteredcountry;
SELECT SKU,MIN(PRICE) AS FIRST_MINIMUM_PRICE   FROM test1.filteredcountry group by SKU ; 
