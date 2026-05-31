create table if not exists mantica.sales_comparison_point (
  point_id bigserial primary key,
  point_date date not null,
  sales_gt numeric not null,
  service_level numeric not null,
  fullness numeric not null,
  unit_price numeric not null,
  loaded_at timestamptz not null default now()
);
