class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/, message: "Must be a valid email address" }
end
