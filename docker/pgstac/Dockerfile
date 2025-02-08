# docker build --no-cache -t pgstac-test -f docker/pgstac/Dockerfile .

# Base postgres image that pgstac can be installed onto
FROM ianhorn/postgis:17-3.5-sc-ltsc2022-1.0.1 as pgstac

WORKDIR /docker-entrypoint-initdb.d
COPY docker/pgstac/dbinit/pgstac.sh 990_pgstac.sh
COPY src/pgstac/pgstac.sql 999_pgstac.sql