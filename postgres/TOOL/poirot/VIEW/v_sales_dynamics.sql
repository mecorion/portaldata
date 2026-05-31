create or replace view poirot.v_sales_dynamics as
select
  proc_id,
  rc,
  tt,
  product_group,
  position_name,
  metric_date,
  to_char(metric_date, 'DD.MM') as date_short,
  metric1,
  metric2,
  metric3,
  metric4,
  metric5,
  metric6,
  metric7,
  metric8,
  metric9
from poirot.sales_metric_fact;
