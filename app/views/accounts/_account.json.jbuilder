json.extract! account, :id, :name, :description, :interest_rate, :user_id, :created_at, :updated_at
json.url account_url(account, format: :json)
