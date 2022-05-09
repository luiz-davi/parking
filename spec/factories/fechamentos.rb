FactoryBot.define do
  factory :fechamento do
    user { nil }
    caixa { nil }
    valor { 1.5 }
    obs { "MyText" }
    valor_anterior { 1.5 }
    status { 1 }
  end
end
