# Postgres braindump

- Problem: psql: could not connect to server: No such file or directory
    Is the server running locally and accepting
        connections on Unix domain socket "/var/pgsql_socket/.s.PGSQL.5432"?
- Solution: export PGHOST=localhost
