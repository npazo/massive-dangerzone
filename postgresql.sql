
# Count all rows in Postresql DB
SELECT sum(n_live_tup)
  FROM pg_stat_user_tables;

psql -h <HOSTNAME> -U <USERNAME> -d <DATABASE>
