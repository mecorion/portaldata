create table if not exists admin.tool_publication_request (
  request_id uuid primary key,
  draft_id uuid not null references admin.tool_config_draft(draft_id),
  status text not null default 'pending',
  requested_by uuid references core.app_user(user_id),
  reviewed_by uuid references core.app_user(user_id),
  review_comment text,
  requested_at timestamptz not null default now(),
  reviewed_at timestamptz
);
