create table tradeing(
tradeing_date DATE,
trade_Open NUMERIC(10,4),
trade_High NUMERIC(10,4),
trade_Low NUMERIC(10,4),
trade_Close NUMERIC(10,4),
trade_Volume BIGINT
);

COPY tradeing
FROM 'C:\\Users\\amalm\\OneDrive\\Desktop\\tradeing_data_anlysis\\stock_data.csv'
DELIMITER ',' CSV HEADER;

SELECT *
FROM tradeing;