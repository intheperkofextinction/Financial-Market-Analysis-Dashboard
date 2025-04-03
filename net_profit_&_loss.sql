-- Net profit & loss

SELECT 
    trade_date,
    SUM((trade_close - trade_open) * trade_volume) AS net_pnl
FROM tradeing
GROUP BY trade_date
ORDER BY trade_date;

