create table if not exists profiles (
  username text primary key,
  current_skill text not null default '01',
  default_minutes int not null default 20,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists sits (
  id uuid primary key default gen_random_uuid(),
  username text not null references profiles(username) on delete cascade,
  started_at timestamptz not null,
  duration_sec int not null,
  planned_sec int,
  skill text not null,
  calm int check (calm between 1 and 5),
  hindrances text[] not null default '{}',
  marker boolean,
  note text,
  created_at timestamptz not null default now()
);

create index if not exists sits_user_started on sits (username, started_at desc);

alter table profiles enable row level security;
alter table sits enable row level security;

drop policy if exists "anon all profiles" on profiles;
create policy "anon all profiles" on profiles for all to anon using (true) with check (true);
drop policy if exists "anon all sits" on sits;
create policy "anon all sits" on sits for all to anon using (true) with check (true);
