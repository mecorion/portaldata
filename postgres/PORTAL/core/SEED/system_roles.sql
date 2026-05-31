insert into core.role (role_code, title, description, is_system)
values
  ('admin', 'Администратор', 'Полный доступ к платформе Portal Omen.', true),
  ('user', 'Пользователь', 'Базовый пользовательский доступ к порталу.', true)
on conflict (role_code) do update
set
  title = excluded.title,
  description = excluded.description,
  is_system = excluded.is_system;
