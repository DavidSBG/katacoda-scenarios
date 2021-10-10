![star schema](./assets/star_schema.jpg)

```
psql
```{{execute T1}}


```
CREATE TABLE product_dim
(
   product_id serial PRIMARY KEY,
   productname varchar(64)
)
CREATE TABLE country_dim
(
   country_id serial PRIMARY KEY,
   countryname varchar(64)
)
CREATE TABLE date_dim
(
   date_id serial PRIMARY KEY,
   date date
)
CREATE TABLE city_dim
(
   city_id serial PRIMARY KEY,
   city varchar(64)
)
CREATE TABLE customer_dim
(
   customer_id serial PRIMARY KEY
);
```{{execute T1}}