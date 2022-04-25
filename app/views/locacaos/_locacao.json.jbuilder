json.extract! locacao, :id, :placa, :vaga_id, :created_at, :updated_at
json.url locacao_url(locacao, format: :json)
