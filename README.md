# pompeii

Dump the database (it will prompt for a password):

pg_dump -F c -v -U pompeii -h localhost pompeii_development -f backup.psql


Restore from a dump:

pg_restore -c -C -F c -v -U postgres backup.psql
