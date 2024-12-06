INSTALL sqlite;
LOAD sqlite;

-- absolute path to sqlite-sakila.db
CALL sqlite_attach (
    '/Documents/github/sql-andres-trujillo-de24/lived_demos/10_set_operations/data/sqlite-sakila.db'
)