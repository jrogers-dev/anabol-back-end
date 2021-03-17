class Food < ApplicationRecord
  belongs_to :user
  has_many :meals
  has_many :days, through: :meals
end
