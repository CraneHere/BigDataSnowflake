\i /docker-entrypoint-initdb.d/ddl.sql

COPY raw_sales_data FROM '/docker-entrypoint-initdb.d/MOCK_DATA.csv' DELIMITER ',' CSV HEADER;
COPY raw_sales_data FROM '/docker-entrypoint-initdb.d/MOCK_DATA_1.csv' DELIMITER ',' CSV HEADER;
COPY raw_sales_data FROM '/docker-entrypoint-initdb.d/MOCK_DATA_2.csv' DELIMITER ',' CSV HEADER;
COPY raw_sales_data FROM '/docker-entrypoint-initdb.d/MOCK_DATA_3.csv' DELIMITER ',' CSV HEADER;
COPY raw_sales_data FROM '/docker-entrypoint-initdb.d/MOCK_DATA_4.csv' DELIMITER ',' CSV HEADER;
COPY raw_sales_data FROM '/docker-entrypoint-initdb.d/MOCK_DATA_5.csv' DELIMITER ',' CSV HEADER;
COPY raw_sales_data FROM '/docker-entrypoint-initdb.d/MOCK_DATA_6.csv' DELIMITER ',' CSV HEADER;
COPY raw_sales_data FROM '/docker-entrypoint-initdb.d/MOCK_DATA_7.csv' DELIMITER ',' CSV HEADER;
COPY raw_sales_data FROM '/docker-entrypoint-initdb.d/MOCK_DATA_8.csv' DELIMITER ',' CSV HEADER;
COPY raw_sales_data FROM '/docker-entrypoint-initdb.d/MOCK_DATA_9.csv' DELIMITER ',' CSV HEADER;

\i /docker-entrypoint-initdb.d/dml.sql
