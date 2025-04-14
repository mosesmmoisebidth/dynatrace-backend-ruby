class CandidateBillingInfo < ApplicationRecord
    self.table_name = "users.candidate_billing_infos"
    belongs_to: user