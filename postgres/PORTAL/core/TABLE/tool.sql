create table if not exists core.tool (
  tool_id uuid primary key,
  slug text not null unique,
  title text not null,
  description text not null,
  accent_color text not null,
  navigation_label text not null,
  navigation_icon text not null,
  navigation_order integer not null default 0,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
