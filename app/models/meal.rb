class Meal < ApplicationRecord
  belongs_to :Day
  has_many :foods
end
