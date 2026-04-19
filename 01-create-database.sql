-- Creating a database --
CREATE DATABASE company_records;

CREATE USER db_user WITH PASSWORD 'Abcde1234';
GRANT ALL PRIVILEGES ON DATABASE company_records TO db_user;