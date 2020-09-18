
# Count all rows in Postresql DB
SELECT sum(n_live_tup)
  FROM pg_stat_user_tables;

psql -h <HOSTNAME> -U <USERNAME> -d <DATABASE>

postgres=# create user myuser with encrypted password 'mypass';
postgres=# grant all privileges on database mydb to myuser;

psql -h <HOSTNAME> -U <USER> -d <DATABASE> -a -f listpgp.sql

# dump only specific schema to a file
pg_dump -n <SCHEMA_NAME> > output.sql

# change psql 
\password "<USER>"
