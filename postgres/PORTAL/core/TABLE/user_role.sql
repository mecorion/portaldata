create table if not exists core.user_role (
  user_id uuid not null references core.app_user(user_id),
  role_code text not null references core.role(role_code),
  created_at timestamptz not null default now(),
  primary key (user_id, role_code)
);
