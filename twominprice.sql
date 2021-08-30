select distinct SKU,case when x.rownum=1  then PRICE end AS FIRST_MINIMUM_VALUE,case when x.rownum=2 then PRICE end AS SECOND_MINIMUM_VALUE from
(select SKU,PRICE, row_number() over(partition by SKU)as rownum from test1.filteredcountry)as x;