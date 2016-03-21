# MySQL notes
# -----------

# MySQL on windows works just fine as windows is already case-insensitive.  However, Linux is fussy!
# To make a linux install of MySQL work in case-insensitive mode edit:
#   /etc/mysql/my.cnf
# Find the [mysqld] section and add in there:
#   lower_case_table_names = 1
# Then restart mysql and voila, we have a case-insensitive MySQL deployment.


create schema ssd;

CREATE USER 'ssd'@'localhost'
  IDENTIFIED BY 'sch00lsims';

GRANT ALL PRIVILEGES ON *.* TO 'ssd'@'localhost' IDENTIFIED BY 'sch00lsims' WITH GRANT OPTION;
FLUSH PRIVILEGES;