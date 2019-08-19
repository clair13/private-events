class User < ApplicationRecord
  has_many :hosted_events, class_name: 'Event', foreign_key: 'creator_id'
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 70 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 300 },format: { with: VALID_EMAIL_REGEX }
end
