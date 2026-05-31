create or replace view admin.v_tool_draft_queue as
select
  d.draft_id,
  d.tool_id,
  d.slug,
  d.title,
  d.status as draft_status,
  r.request_id,
  r.status as publication_status,
  r.requested_at,
  d.updated_at
from admin.tool_config_draft d
left join admin.tool_publication_request r on r.draft_id = d.draft_id;
