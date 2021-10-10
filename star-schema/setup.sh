docker run --name postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
docker exec -it postgres bash
sleep 1
psql -U postgres