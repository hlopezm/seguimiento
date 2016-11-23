json.extract! election, :id, :nombre, :nominal, :created_at, :updated_at
json.url election_url(election, format: :json)