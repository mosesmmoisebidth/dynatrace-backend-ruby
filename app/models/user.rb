class User < ApplicationRecord
    self.table_name = "users.users"
    enum company: { APPLICATION: 0, ADVERTISEMENT: 1, CUSTOMER: 2, DESIGN: 3, DEVELOPER: 4 }
    enum gender: { FEMALE: 0, MALE: 1, BOTH: 2, NONE: 3 }
    enum role: { ADMIN: 0, CANDIDATE: 1, EMPLOYER: 2 }
    enum status: { ACTIVE: 0, INACTIVE: 1, DELETED: 2, BLOCKED: 3 }
    has_one :candidate_entity, class_name: "CandidateEntity", foreign_key: "user_id", dependent: :destroy
    has_one :employer_entity, class_name: "EmployerEntity", foreign_key: "user_id", dependent: :destroy
    has_one :profile_view_entity, class_name: "ProfileViewsEntity", foreign_key: "user_id", dependent: :destroy
    has_one :user_application, class_name: "UserApplications", foreign_key: "user_id", dependent: :destroy
    # belongs_to :agreement