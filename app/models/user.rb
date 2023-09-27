class User < ApplicationRecord
    has_secure_password
    has_one :profile
    validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "must be a valid email" }
    validates :password, presence: true, length: { in: 6..20 }
end
  