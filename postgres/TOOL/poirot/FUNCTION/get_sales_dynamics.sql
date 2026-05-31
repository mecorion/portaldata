create or replace function poirot.get_sales_dynamics(
  p_from date default null,
  p_to date default null
)
returns setof poirot.v_sales_dynamics
language sql
stable
as $$
  select *
  from poirot.v_sales_dynamics
  where (p_from is null or metric_date >= p_from)
    and (p_to is null or metric_date <= p_to)
  order by metric_date;
$$;
