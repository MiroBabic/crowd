json.array!(@payments) do |payment|
  json.extract! payment, :id, :user_id, :project_id, :reward_id, :amount, :confirmed
  json.url payment_url(payment, format: :json)
end
