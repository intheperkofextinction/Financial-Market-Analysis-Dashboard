-- Value at Risk (VaR) - 95% Confidence
WITH Returns AS (
    SELECT 
        (trade_close - LAG(trade_close) OVER (ORDER BY trade_date)) / LAG(trade_close) OVER (ORDER BY trade_date) AS daily_return
    FROM tradeing
)
SELECT 
    PERCENTILE_CONT(0.05) WITHIN GROUP (ORDER BY daily_return) AS var_95
FROM Returns;
