create table if not exists public.guests (
  id text primary key,
  name text not null,
  gender text not null default 'male',
  photo text,
  token uuid not null unique,
  checked_in boolean not null default false,
  checked_at timestamptz
);

alter table public.guests enable row level security;

drop policy if exists "Public can read guests" on public.guests;
drop policy if exists "Public can add guests" on public.guests;
drop policy if exists "Public can update check-ins" on public.guests;
drop policy if exists "Public can remove guests" on public.guests;

create policy "Public can read guests"
on public.guests for select
to anon
using (true);

create policy "Public can add guests"
on public.guests for insert
to anon
with check (true);

create policy "Public can update check-ins"
on public.guests for update
to anon
using (true)
with check (true);

create policy "Public can remove guests"
on public.guests for delete
to anon
using (true);

insert into public.guests (id, name, gender, photo, token)
values
  ('EVT001', 'John Ade', 'male', 'https://cdn-icons-png.flaticon.com/512/6997/6997674.png', gen_random_uuid()),
  ('EVT002', 'Mary James', 'female', 'https://cdn-icons-png.flaticon.com/512/6997/6997662.png', gen_random_uuid()),
  ('EVT003', 'David Olu', 'male', 'https://cdn-icons-png.flaticon.com/512/6997/6997674.png', gen_random_uuid())
on conflict (id) do nothing;
