json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :image
  json.url order_url(order, format: :json)
end
