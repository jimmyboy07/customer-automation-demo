ALTER TABLE public.customers
  ADD COLUMN loyalty_points integer NOT NULL DEFAULT 0
  CONSTRAINT customers_loyalty_points_nonnegative CHECK (loyalty_points >= 0);
