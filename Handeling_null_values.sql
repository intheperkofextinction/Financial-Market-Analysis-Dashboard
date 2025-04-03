-- Checking for missing values

SELECT COUNT(*) - COUNT(trade_date) AS missing_date,
       COUNT(*) - COUNT(trade_open) AS missing_open,
	   COUNT(*) - COUNT(trade_high) AS missing_high,
	   COUNT(*) - COUNT(trade_low) AS missing_low,
	   COUNT(*) - COUNT(trade_close) AS missing_close,
	   COUNT(*) - COUNT(trade_volume) AS missing_volume
FROM tradeing

--- Fill NULL values with the previous day's value

UPDATE tradeing t1
SET trade_open =  (SELECT trade_open FROM tradeing t2 WHERE t2.trade_date = t1.trade_date - INTERVAL '1 day')
WHERE trade_open IS NULL;

UPDATE tradeing t1
SET trade_high =  (SELECT trade_high FROM tradeing t2 WHERE t2.trade_date = t1.trade_date - INTERVAL '1 day')
WHERE trade_high IS NULL;

UPDATE tradeing t1
SET trade_low =  (SELECT trade_low FROM tradeing t2 WHERE t2.trade_date = t1.trade_date - INTERVAL '1 day')
WHERE trade_low IS NULL;

UPDATE tradeing t1
SET trade_close =  (SELECT trade_close FROM tradeing t2 WHERE t2.trade_date = t1.trade_date - INTERVAL '1 day')
WHERE trade_close IS NULL;

UPDATE tradeing t1
SET trade_volume =  (SELECT trade_volume FROM tradeing t2 WHERE t2.trade_date = t1.trade_date - INTERVAL '1 day')
WHERE trade_volume IS NULL;






