```
SELECT sales_fact.quantity, product_dim.productname FROM sales_fact, product_dim WHERE sales_fact.product_id = product_dim.product_id;
```{{execute T1}}