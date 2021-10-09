Within the star schema the data is divided into fact and dimension tables.
### Fact tables
Fact tables are used to store the data which we are interested in and want to analyse. The facts. They can contain observations or events like sales, temperatures, energy usage, etc. Usually in a numeric format. Additionaly the fact tables contain foreign keys to the associated dimensions.
### Dimension tables
A dimension table provides context around the facts stored in the fact tables. They store answers to questions like the "who, what, when, where" regarding the facts[1]. Dimension tables contains a key column and descriptiv columns.




![star schema](./assets/star_schema.jpg)