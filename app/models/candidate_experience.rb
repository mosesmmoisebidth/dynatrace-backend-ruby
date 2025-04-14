class CandidateExperience < ApplicationRecord
    self.table_name = "users.candidate_experiences"
    belongs_to: candidate_entity, class_name: "CanddiateEntity", foreign_key: "candidate_entity_id"