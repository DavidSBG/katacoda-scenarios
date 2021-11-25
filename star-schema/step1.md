The star schema is a schema to model data in a data warehouse, primarly used in the data mart layer[4].
The primary target of the star schema is to access large quantities of data efficiently[2].

Within the star schema the data is divided into fact and dimension tables.
### Fact tables
Fact tables are used to store the data which we are interested in and want to analyse. The facts. They can contain observations or events like sales, temperatures, energy usage, etc. usually in a numeric format[3]. Additionaly the fact tables contain foreign keys to the associated dimensions[1].
### Dimension tables
A dimension table provides context around the facts stored in the fact tables. They store answers to questions like the "who, what, when or where" regarding the facts[1]. Dimension tables contain a key column and descriptiv columns[2].