-- Calculating  Volatility (Standard Deviation of Returns)
SELECT
	trade_date,
	STDDEV(daily_returns) OVER(
		ORDER BY trade_date
		ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
	) AS voltailty_30
FROM(		
	SELECT
		trade_date,
	   (trade_close -LAG(trade_close) OVER (ORDER BY trade_date)) / LAG(trade_close) OVER (ORDER BY trade_date ) AS daily_returns
	FROM tradeing
	)
ORDER BY trade_date;