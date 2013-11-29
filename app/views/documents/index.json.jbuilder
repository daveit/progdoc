json.array!(@documents) do |document|
  json.extract! document, :deldoc, :lotnum, :custord, :docdate, :salesorder, :docname, :product_id
  json.url document_url(document, format: :json)
end
