class CandidateAwards < ApplicationRecord
    self.table_name = "users.candidate_awards"
    belongs_to :candidate_entity, class_name: "CandidateEntity", foreign_key: "candidate_entity_id"
    