ALTER TABLE users
  ADD COLUMN IF NOT EXISTS kyc_status text NOT NULL DEFAULT 'pending',
  ADD COLUMN IF NOT EXISTS kyc_level integer NOT NULL DEFAULT 1,
  ADD COLUMN IF NOT EXISTS kyc_provider text,
  ADD COLUMN IF NOT EXISTS kyc_reference_id text,
  ADD COLUMN IF NOT EXISTS kyc_verified_at timestamptz;

ALTER TABLE courier_trips
  ADD COLUMN IF NOT EXISTS layovers integer NOT NULL DEFAULT 0;

ALTER TABLE compliance_logs
  ALTER COLUMN shipment_id DROP NOT NULL;

ALTER TABLE compliance_logs
  ADD COLUMN IF NOT EXISTS trip_id uuid REFERENCES courier_trips(id) ON DELETE CASCADE,
  ADD COLUMN IF NOT EXISTS log_type text NOT NULL DEFAULT 'shipment_rule',
  ADD COLUMN IF NOT EXISTS signature_name text,
  ADD COLUMN IF NOT EXISTS signature_method text,
  ADD COLUMN IF NOT EXISTS signature_timestamp timestamptz,
  ADD COLUMN IF NOT EXISTS ip_address inet,
  ADD COLUMN IF NOT EXISTS agreement_version text;