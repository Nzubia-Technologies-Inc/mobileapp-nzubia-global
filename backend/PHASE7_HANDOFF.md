Phase 7 handoff: Compliance logs and risk scores

Key fields in compliance_logs to use for dispute resolution admin view:

- id: primary key
- shipment_id: linked shipment (nullable for pre-save checks)
- sender_id: who requested the check
- rule_id: the rule that fired (e.g. KEYWORD_BLOCKED, OFAC_HIT, VALUE_PREMIUM_INSURANCE)
- severity: 'block'|'warn'|'info'
- detail: machine-readable JSON string with internal details (e.g. matched keywords, ofac match payload)
- resolution: 'blocked'|'warned'|'passed'|'manual_review'
- created_at: timestamp

How to surface risk scores during arbitration:

- shipment_matches.risk_scores (JSONB) contains the structured RiskScore object:
  {
    fraud_risk, customs_risk, damage_risk, courier_reliability_risk,
    overall_risk, risk_label, flags[], recommendation
  }

- For dispute UI, show:
  - overall_risk and risk_label prominently
  - the flags[] as actionable lines (e.g. "High declared value; OFAC name match")
  - timeline: show compliance_logs entries ordered by created_at to explain why a match was rejected or flagged

- When user appeals, admin should review:
  1. OFAC hits first (compliance_logs with rule_id=OFAC_HIT). These are legal blocks and require escalation.
  2. Any KEYWORD_BLOCKED entries (show matched keywords from detail).
  3. Risk scoring flags: if recommendation == 'Reject' or overall_risk >= 80, include the risk breakdown in the case file.

Storage & audit considerations:
- Keep compliance_logs immutable. Use resolution field to mark how an issue was handled (approved, rejected, refunded).
- Persist the raw Claude responses (redact PII) alongside the parsed risk_scores for debugging parsing issues.

If you want, I can scaffold the admin dispute UI or add DB indexes and retention policies for compliance_logs.
