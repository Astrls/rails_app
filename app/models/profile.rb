class Profile < ApplicationRecord
  belongs_to :user
  has_many :project
  has_many :blurb
end
