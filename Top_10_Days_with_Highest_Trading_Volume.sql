-- Top 10 days with highest tradeing volume
SELECT trade_date, 
	trade_volume
FROM tradeing
ORDER BY trade_volume DESC
LIMIT 10