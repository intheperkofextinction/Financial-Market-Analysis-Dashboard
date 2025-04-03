select *
from tradeing

--- Finding duplicate
SELECT *,
  ROW_NUMBER() OVER(
PARTITION BY tradeing_date, trade_open,trade_high,trade_low,trade_volume
 order by tradeing_date
  ) as row_num
  from tradeing

SELECT * FROM
(SELECT *,
  ROW_NUMBER() OVER(
PARTITION BY tradeing_date, trade_open,trade_high,trade_low,trade_volume
 order by tradeing_date
  ) as row_num
  from tradeing
  )
  WHERE row_num >1