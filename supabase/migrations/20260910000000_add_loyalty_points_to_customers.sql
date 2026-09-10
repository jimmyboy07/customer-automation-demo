create table if not exists customers (
     id uuid primary key default gen_random_uuid(),
     name text not null,
     email text unique not null,
     created_at timestamp default now()
   );
   create table if not exists orders (
     id uuid primary key default gen_random_uuid(),
     customer_id uuid references customers(id),
     amount numeric,
     created_at timestamp default now()
   );
   alter table customers enable row level security;
   alter table orders enable row level security;