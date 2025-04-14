class UserApplications < ApplicationRecord
    self.table_name = "users.user_applications"
    belongs_to :user, class_name: "User", foreign_key: "user_id"