class DaySerializer
  include JSONAPI::Serializer
  attributes :id, :user_id, :date
end
