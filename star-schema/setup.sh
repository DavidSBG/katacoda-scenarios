docker run --name postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
docker exec -it postgres bash
until [ "`docker inspect -f {{.State.Running}} postgres`"=="true" ]; do
    sleep 0.1;
done;
psql -U postgres