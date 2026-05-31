create table if not exists core.role (
  role_code text primary key,
  title text not null,
  description text,
  is_system boolean not null default false,
  created_at timestamptz not null default now()
);
