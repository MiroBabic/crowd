json.array!(@rewards) do |reward|
  json.extract! reward, :id, :name, :amount, :project_id
  json.url reward_url(reward, format: :json)
end
