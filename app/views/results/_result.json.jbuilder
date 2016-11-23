json.extract! result, :id, :votos, :election_id, :party_id, :created_at, :updated_at
json.url result_url(result, format: :json)