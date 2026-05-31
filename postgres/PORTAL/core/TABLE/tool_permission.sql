create table if not exists core.tool_permission (
  tool_permission_id uuid primary key,
  tool_id uuid not null references core.tool(tool_id),
  role_code text not null,
  can_view boolean not null default true,
  can_run boolean not null default true,
  created_at timestamptz not null default now(),
  unique (tool_id, role_code)
);
