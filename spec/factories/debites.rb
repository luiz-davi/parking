FactoryBot.define do
  factory :debite do
    user { nil }
    estacionamento { nil }
    caixa { nil }
    valor { 1 }
    motivo { "MyText" }
  end
end
