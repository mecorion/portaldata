create or replace view core.v_tool_catalog as
select
  t.tool_id,
  t.slug,
  t.title,
  t.description,
  t.accent_color,
  t.navigation_label,
  t.navigation_icon,
  t.navigation_order,
  tv.version,
  tv.status,
  tv.published_at
from core.tool t
join core.tool_version tv on tv.tool_id = t.tool_id
where t.is_active = true
  and tv.status = 'published';
