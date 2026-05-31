create or replace function mantica.get_sales_comparison(
  p_from date default null,
  p_to date default null
)
returns setof mantica.v_sales_comparison
language sql
stable
as $$
  select *
  from mantica.v_sales_comparison
  where (p_from is null or point_date >= p_from)
    and (p_to is null or point_date <= p_to)
  order by point_date;
$$;
