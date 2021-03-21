class MealSerializer
  include JSONAPI::Serializer
  attributes :name, :day_id, :food_id
end
