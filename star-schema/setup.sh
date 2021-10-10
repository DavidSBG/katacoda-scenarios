docker run --name starschema -e POSTGRES_PASSWORD=starpassword -d postgres
docker cp /usr/local/bin/sampleData.sql starschema:sampleData.sql
docker exec -it starschema bash
su postgres