class User < ApplicationRecord
    enum company: { APPLICATION: 0, ADVERTISEMENT: 1, CUSTOMER: 2, DESIGN: 3, DEVELOPER: 4 }
    enum gender: { FEMALE: 0, MALE: 1, BOTH: 2, NONE: 3 }
    enum role: { ADMIN: 0, CANDIDATE: 1, EMPLOYER: 2 }
    enum status: { ACTIVE: 0, INACTIVE: 1, DELETED: 2, BLOCKED: 3 }
    has_one :candidate, dependent: :destroy
    has_one :employer, dependent: :destroy
    has_one :billing, class_name: 'UserBillingInfo', dependent: :destroy
    belongs_to :agreement