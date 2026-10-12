-- SEA DOMINION: OPTIONAL ONLINE BACKEND STARTER
-- This is an architectural starting point, NOT a complete production schema.
-- Review security policies before using this in a public game.
-- Never put a service_role key in game.js or any public client file.
--
-- For a real multiplayer game, server-side functions must validate movement,
-- trading, resource changes, combat, and island ownership. Otherwise players
-- can cheat by modifying browser requests.

create table if not exists public.player_profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  display_name text not null default 'Sailor',
  created_at timestamptz not null default now()
);

alter table public.player_profiles enable row level security;

create policy "Authenticated users can view profiles"
on public.player_profiles for select
to authenticated
using (true);

create policy "Players can create their own profile"
on public.player_profiles for insert
to authenticated
with check (auth.uid() = id);

create policy "Players can update their own profile"
on public.player_profiles for update
to authenticated
using (auth.uid() = id)
with check (auth.uid() = id);

-- Before launch, add secure server-validated operations for fleet state,
-- gold, resources, player trades, island claims and battles.
-- Realtime channels should be private and require authenticated access.
