The star schema is used over other schemas primarily due to its presentation of data in a standard and intuitive framework which makes it easily understandable for the end users[4]. Additionally it has a efficient and fast execution of complex sql statements, due to the limited amount of required joins, which is crutial in the data mart layer[4]. 
The star schema does not make use of the Boyce-Codd normal form[1] thereby can include anomalies and redundancies.

### Outlook: Further dimensional models
To tackle some of the pitfalls of the star schema there are extensions of the star schema like the snowflake schema or the galaxy schema.
These schemas for example try to reduce redundancies or allow for more flexible data modeling[1]. But unfortunately often come with the cost of more complexity and need for more joins thus worse performance.