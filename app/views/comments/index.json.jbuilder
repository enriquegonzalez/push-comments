json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :message
end
