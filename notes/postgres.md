# Postgres braindump

- Problem: psql: could not connect to server: No such file or directory
    Is the server running locally and accepting
        connections on Unix domain socket "/var/pgsql_socket/.s.PGSQL.5432"?
- Solution: export PGHOST=localhost

- Problem: blocking queries
- Solution:
```
select pid,
       usename,
       pg_blocking_pids(pid) as blocked_by,
       query as blocked_query
from pg_stat_activity
where cardinality(pg_blocking_pids(pid)) > 0;
```
