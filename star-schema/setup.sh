docker run --name starschema -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 postgres
docker exec -it starschema bash