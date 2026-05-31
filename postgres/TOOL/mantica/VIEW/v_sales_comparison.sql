create or replace view mantica.v_sales_comparison as
select
  point_date,
  to_char(point_date, 'DD.MM') as date_short,
  sales_gt,
  service_level,
  fullness,
  unit_price
from mantica.sales_comparison_point;
