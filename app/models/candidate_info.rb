class CandidateInfo < ApplicationRecord
    self.table_name = "users.candidate_infos"
    belongs_to: candidate_entity, class_name: "CandidateEntity", foreign_key: "candidate_entity_id"