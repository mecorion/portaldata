create table if not exists core.tool_version (
  tool_version_id uuid primary key,
  tool_id uuid not null references core.tool(tool_id),
  version integer not null,
  status text not null default 'draft',
  config jsonb not null,
  published_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (tool_id, version)
);
