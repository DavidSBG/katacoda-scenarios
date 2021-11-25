To broaden your understanding of the star schema we will create an example schema.

Run the following script(multiple times if required) to enter the postgres terminal. Afterwards it should look like: "postgres=#"
```
psql
```{{execute T1}}

The tables shown in the image below need to be created.
At the center of our schema is the fact table sales_fact, further described by five dimension tables country_dim, date_dim, city_dim, customer_dim and product_dim.

![star schema](./assets/star_schema.jpg)

Try to understand and run the following script to create the dimension tables.
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


Now create the fact table.
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

Our schema is created and now can be tried out.