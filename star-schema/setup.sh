docker run --name starschema -e POSTGRES_PASSWORD=starpassword -d postgres
docker exec -it starschema bash
su postgres
psql