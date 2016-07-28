class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_USERNAME_REGEX = /\A[a-zA-Z0-9]+\z/i
  validates :name,
    presence: true,
    length: {maximum: 50}
  validates :username,
    presence: true,
    length: {maximum: 20},
    uniqueness: true,
    format: { with: VALID_USERNAME_REGEX }
  validates :email,
    presence: true,
    length: {maximum: 255},
    uniqueness: true,
    format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
