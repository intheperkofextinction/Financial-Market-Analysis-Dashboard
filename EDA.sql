---Basic Summary Statistics
SELECT MAX(trade_date) AS start_date,
	   MIN(trade_date) AS end_date,
	   COUNT(*) AS total_record,
	   AVG(trade_close) AS avg_closeing_price,
	   MAX(trade_high) AS highest_price,
	   MIN(trade_low) AS lowest_price
FROM tradeing 