class ProfileViewsEntity < ApplicationRecord
    self.table_name = "users.profile_views_entities"
    belongs_to :user, class_name: "User", foreign_key: "user_id"