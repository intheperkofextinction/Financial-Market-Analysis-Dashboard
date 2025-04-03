-- Calculate daily price change
SELECT trade_date,
       trade_close - trade_open  AS daily_price_change,
	   ((trade_open - trade_close) / trade_open) * 100 AS daily_return
FROM tradeing
ORDER BY trade_date DESC;