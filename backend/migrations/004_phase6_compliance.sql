-- Migration: Phase 6 - Compliance and Risk

-- Add to shipments table:
ALTER TABLE shipments ADD COLUMN IF NOT EXISTS
  compliance_flags JSONB DEFAULT '[]';
ALTER TABLE shipments ADD COLUMN IF NOT EXISTS
  acknowledged_warnings JSONB DEFAULT '[]';
ALTER TABLE shipments ADD COLUMN IF NOT EXISTS
  requires_manual_review BOOLEAN DEFAULT false;
ALTER TABLE shipments ADD COLUMN IF NOT EXISTS
  requires_prescription_upload BOOLEAN DEFAULT false;
ALTER TABLE shipments ADD COLUMN IF NOT EXISTS
  prescription_verified VARCHAR(20) DEFAULT null;
ALTER TABLE shipments ADD COLUMN IF NOT EXISTS
  is_otc BOOLEAN DEFAULT false;
ALTER TABLE shipments ADD COLUMN IF NOT EXISTS
  insurance_tier VARCHAR(20) DEFAULT 'standard';

-- Add to users table:
ALTER TABLE users ADD COLUMN IF NOT EXISTS
  is_flagged BOOLEAN DEFAULT false;
ALTER TABLE users ADD COLUMN IF NOT EXISTS
  compliance_flag_count INT DEFAULT 0;
ALTER TABLE users ADD COLUMN IF NOT EXISTS
  ofac_last_screened_at TIMESTAMP;

-- Add to shipment_matches table:
ALTER TABLE shipment_matches ADD COLUMN IF NOT EXISTS
  ofac_screened_at TIMESTAMP;
ALTER TABLE shipment_matches ADD COLUMN IF NOT EXISTS
  ofac_result JSONB;

-- Indexes:
CREATE INDEX IF NOT EXISTS idx_compliance_logs_sender
  ON compliance_logs(shipment_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_shipments_manual_review
  ON shipments(requires_manual_review, status)
  WHERE requires_manual_review = true;
