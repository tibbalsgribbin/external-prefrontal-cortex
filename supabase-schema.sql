-- External Prefrontal Cortex — Initial Supabase Schema
-- Run this in your Supabase project's SQL editor
-- Dashboard > SQL Editor > New query > paste > Run

-- PROFILES TABLE
create table public.profiles (
  id uuid references auth.users(id) on delete cascade primary key,
  created_at timestamptz default now(),
  onboarding_complete boolean default false,
  typical_sleep_start text,
  typical_sleep_end text,
  pain_baseline text,
  has_work_commitments boolean,
  diagnoses text,
  communication_preference text,
  capacity_display_mode text default 'permission',
  frequency_settings jsonb default '{}',
  wording_overrides jsonb default '{}',
  low_capacity_questions text[] default array['Q3','Q4','Q5','Q10','Q18','Q20','Q40','Q42']
);

alter table public.profiles enable row level security;
create policy "Users can view own profile" on public.profiles for select using (auth.uid() = id);
create policy "Users can update own profile" on public.profiles for update using (auth.uid() = id);

create or replace function public.handle_new_user()
returns trigger as $$
begin
  insert into public.profiles (id) values (new.id);
  return new;
end;
$$ language plpgsql security definer;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- CUSTOM QUESTIONS TABLE
create table public.custom_questions (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references public.profiles(id) on delete cascade not null,
  created_at timestamptz default now(),
  question_text text not null,
  clarifying_note text,
  response_type text not null check (response_type in ('frequency', 'yes-sometimes-no', 'free-text')),
  frequency text not null default 'always' check (frequency in ('always', 'occasional', 'off')),
  display_order integer,
  archived boolean default false
);

alter table public.custom_questions enable row level security;
create policy "Users can manage own custom questions" on public.custom_questions for all using (auth.uid() = user_id);

-- CHECK-INS TABLE
create table public.checkins (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references public.profiles(id) on delete cascade not null,
  created_at timestamptz default now(),
  completed_at timestamptz,
  is_complete boolean default false,
  is_low_capacity_mode boolean default false,
  questions_shown text[],
  questions_skipped text[]
);

alter table public.checkins enable row level security;
create policy "Users can manage own checkins" on public.checkins for all using (auth.uid() = user_id);

-- RESPONSES TABLE
create table public.responses (
  id uuid default gen_random_uuid() primary key,
  checkin_id uuid references public.checkins(id) on delete cascade not null,
  user_id uuid references public.profiles(id) on delete cascade not null,
  created_at timestamptz default now(),
  question_id text not null,
  response_value text,
  notes_text text,
  skipped boolean default false
);

alter table public.responses enable row level security;
create policy "Users can manage own responses" on public.responses for all using (auth.uid() = user_id);

-- Q42 DEEPER EXPLORATION TABLE
create table public.q42_explorations (
  id uuid default gen_random_uuid() primary key,
  checkin_id uuid references public.checkins(id) on delete cascade not null,
  user_id uuid references public.profiles(id) on delete cascade not null,
  created_at timestamptz default now(),
  content text,
  is_draft boolean default false,
  prompts_used text[]
);

alter table public.q42_explorations enable row level security;
create policy "Users can manage own q42 explorations" on public.q42_explorations for all using (auth.uid() = user_id);
