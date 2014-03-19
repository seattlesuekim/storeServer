json.product @products do |product|
  json.extract! product, :id, :name, :price, :image, :avatar, :description
end