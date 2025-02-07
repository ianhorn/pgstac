

# Base postgres image that pgstac can be installed onto
FROM ianhorn/postgis:17-3.5-sc-ltsc2022 AS pgstacbase

RUN choco upgrade chocolatey -y && refreshenv && \
    choco install git -y && refreshenv

COPY docker/pgstac/dbinit/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

# The pgstacbase image with latest version of pgstac installed
FROM pgstacbase AS pgstac
WORKDIR /docker-entrypoint-initdb.d
COPY docker/pgstac/dbinit/pgstac.sh 990_pgstac.sh
COPY src/pgstac/pgstac.sql 999_pgstac.sql