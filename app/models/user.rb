class User < ApplicationRecord
  has_many :tariflers, dependent: :destroy
  has_many :yorumlars, dependent: :destroy
  before_save {self.email = email.downcase}
  validates :username, presence: true, length: {maximum: 20}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 150}, uniqueness: { case_sensitive: false }, format: {with: VALID_EMAIL_REGEX}
  has_secure_password
  validates :password, presence: true, allow_nil: true
end