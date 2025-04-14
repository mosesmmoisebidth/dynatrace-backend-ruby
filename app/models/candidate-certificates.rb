class CandidateCertificates < ApplicationRecord
    self.table_name = "users.candidate_certificates"
    belongs_to :candidate_entity, class_name: "CandidateEntity", foreign_key: "candidate_entity_id"