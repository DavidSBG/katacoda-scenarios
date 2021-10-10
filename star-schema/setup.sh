docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
#docker run -d -p 5432:5432 -e POSTGRES_PASSWORD=postgres --name columnarpostgresql abuckenhofer/columnarpostgresql:v1.3
#docker exec -it columnarpostgresql bash