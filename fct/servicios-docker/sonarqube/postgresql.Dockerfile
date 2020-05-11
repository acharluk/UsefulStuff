FROM postgres:12.2
COPY acl-pginit.sql /docker-entrypoint-initdb.d/