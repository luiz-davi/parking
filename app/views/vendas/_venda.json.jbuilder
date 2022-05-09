json.extract! venda, :id, :user_id, :caixa_id, :valor, :tipo_pagamento, :locacao_id, :created_at, :updated_at
json.url venda_url(venda, format: :json)
