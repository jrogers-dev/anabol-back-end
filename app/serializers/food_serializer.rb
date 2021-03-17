class FoodSerializer
  include JSONAPI::Serializer
  attributes :rapidapi_id, :user_id, :name, :serving, :calories, :fat, :protein, :carbohydrates
end
