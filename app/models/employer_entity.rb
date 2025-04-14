class EmployerEntity < ApplicationRecord
    self.table_name = "users.employer_entities"
    belongs_to: user_entity, class_name: "User", foreign_key: "user_id"