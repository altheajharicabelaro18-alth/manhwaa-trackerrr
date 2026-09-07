-- Run this in Supabase SQL Editor.
create table if not exists public.manhwa (
  id uuid primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  title text not null,
  reading_status text not null default 'Reading',
  publication_status text not null default 'UNKNOWN',
  rating integer not null default 0 check (rating between 0 and 5),
  notes text not null default '',
  cover text not null default '',
  updated_at timestamptz not null default now()
);

alter table public.manhwa enable row level security;

create policy "Users can read their own manhwa"
on public.manhwa for select
using (auth.uid() = user_id);

create policy "Users can insert their own manhwa"
on public.manhwa for insert
with check (auth.uid() = user_id);

create policy "Users can update their own manhwa"
on public.manhwa for update
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

create policy "Users can delete their own manhwa"
on public.manhwa for delete
using (auth.uid() = user_id);

create index if not exists manhwa_user_id_idx on public.manhwa(user_id);
