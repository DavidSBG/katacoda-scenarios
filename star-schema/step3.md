If all previous scripts executed successfully test data was just entered into he tables.
To test the schema run the following script which returns the productname and the quantity of sold products in france.
```
SELECT product_dim.productname, sales_fact.quantity FROM sales_fact, product_dim, country_dim WHERE sales_fact.product_id = product_dim.product_id AND sales_fact.country_id = country_dim.country_id AND country_dim.countryname='France' ORDER BY sales_fact.quantity DESC;
```{{execute T1}}
The simplicity of the star schema allows for queries like this which run efficiently and are easy to understand due to the limited amount of joins and their simplicity.


Now try to list the ten customers(their ids) who bought the most products in all time.
The result should look something like this:

 customer_id | quantity 
 
          13 |      280
          12 |      210
           9 |      186
          10 |      181
           3 |      167
           4 |      150
           8 |      137
           5 |      133
           1 |      133
           2 |      110