-- Supabase schema example
create table batches (
  id uuid primary key default uuid_generate_v4(),
  name text not null,
  created_at timestamp default now()
);
create table students (
  id uuid primary key default uuid_generate_v4(),
  name text,
  father_name text,
  mobile text,
  dob date,
  receipt_no text,
  admission_date date,
  batch_id uuid references batches(id),
  fee numeric,
  notes text,
  photo_url text,
  created_at timestamp default now()
);