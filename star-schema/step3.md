```
SELECT sales_fact.quantity, product_dim.productname FROM sales_fact, product_dim, country_dim WHERE sales_fact.product_id = product_dim.product_id AND sales_fact.country_id = country_dim.country_id AND country_dim.countryname='France' ORDER BY sales_fact.quantity DESC;
```{{execute T1}}