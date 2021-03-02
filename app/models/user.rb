class User < ApplicationRecord
  has_many :days
  has_many :foods

  validates :email, presence: true, uniqueness: true
end
