class CandidateEducation < ApplicationRecord
    self.table_name = "users.candidate_educations"
    belongs_to: candidate_entity, class_name: "CandidateEntity", foreign_key: "candidate_entity_id"