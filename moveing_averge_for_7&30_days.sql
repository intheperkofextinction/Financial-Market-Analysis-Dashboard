-- Calculateing moveing average for 7 & 30 days
SELECT
	trade_date,
	trade_close,
	AVg(trade_close) OVER (
    	ORDER BY trade_date
		ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
	) AS moveing_avg_7,
	AVG(trade_close) OVER(
    	ORDER BY trade_date
		ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
	) AS moving_avg_29
FROM tradeing
ORDER BY trade_date;