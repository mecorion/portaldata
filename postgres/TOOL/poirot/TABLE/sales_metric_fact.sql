create table if not exists poirot.sales_metric_fact (
  row_id bigserial primary key,
  proc_id text not null,
  rc text not null,
  tt text not null,
  product_group text not null,
  position_name text not null,
  metric_date date not null,
  metric1 numeric,
  metric2 numeric,
  metric3 numeric,
  metric4 numeric,
  metric5 numeric,
  metric6 numeric,
  metric7 numeric,
  metric8 numeric,
  metric9 numeric,
  loaded_at timestamptz not null default now()
);
