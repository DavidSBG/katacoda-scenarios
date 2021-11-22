![star schema](./assets/star_schema.jpg)

To broaden your understanding of the star schema we will createn anexample schema.

Run the following script to enter the postgres terminal. It should look like: "postgres=#"
```
psql
```{{execute T1}}


```
CREATE TABLE product_dim
(
   product_id serial PRIMARY KEY,
   productname varchar(64)
);
CREATE TABLE country_dim
(
   country_id serial PRIMARY KEY,
   countryname varchar(64)
);
CREATE TABLE date_dim
(
   date_id serial PRIMARY KEY,
   date date
);
CREATE TABLE city_dim
(
   city_id serial PRIMARY KEY,
   city varchar(64)
);
CREATE TABLE customer_dim
(
   customer_id serial PRIMARY KEY
);
```{{execute T1}}

```
CREATE TABLE sales_fact
(
   sales_id serial PRIMARY KEY,
   product_id int,
   country_id int,
   date_id int,
   city_id int,
   customer_id int,
   quantity int,
   sales float,
   FOREIGN KEY (product_id) REFERENCES product_dim(product_id),
   FOREIGN KEY (country_id) REFERENCES country_dim(country_id),
   FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
   FOREIGN KEY (city_id) REFERENCES city_dim(city_id),
   FOREIGN KEY (customer_id) REFERENCES customer_dim(customer_id)
);
```{{execute T1}}