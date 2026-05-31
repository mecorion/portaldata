create table if not exists core.app_user (
  user_id uuid primary key,
  login text not null unique,
  display_name text not null,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
