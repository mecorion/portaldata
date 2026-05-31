create table if not exists admin.tool_config_draft (
  draft_id uuid primary key,
  tool_id uuid references core.tool(tool_id),
  slug text not null,
  title text not null,
  config jsonb not null,
  status text not null default 'draft',
  created_by uuid references core.app_user(user_id),
  updated_by uuid references core.app_user(user_id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
