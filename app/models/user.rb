class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  has_secure_password
  validates :password, presence: true
  has_many :blogs, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
