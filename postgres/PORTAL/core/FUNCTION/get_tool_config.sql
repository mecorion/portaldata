create or replace function core.get_tool_config(p_slug text)
returns jsonb
language sql
stable
as $$
  select tv.config
  from core.tool t
  join core.tool_version tv on tv.tool_id = t.tool_id
  where t.slug = p_slug
    and t.is_active = true
    and tv.status = 'published'
  order by tv.version desc
  limit 1;
$$;
