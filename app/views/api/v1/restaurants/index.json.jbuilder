json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address, :user_id
end
