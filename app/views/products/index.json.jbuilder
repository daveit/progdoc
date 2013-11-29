json.array!(@products) do |product|
  json.extract! product, :part
  json.url product_url(product, format: :json)
end
