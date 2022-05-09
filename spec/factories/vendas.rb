FactoryBot.define do
  factory :venda do
    user { nil }
    caixa { nil }
    valor { 1.5 }
    tipo_pagamento { 1 }
    locacao { nil }
  end
end
