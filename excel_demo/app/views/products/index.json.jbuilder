json.array!(Product.all) do |product|
  json.extract! product, :id, :name, :released_on, :price
end
