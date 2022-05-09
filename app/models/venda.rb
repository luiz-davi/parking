class Venda < ApplicationRecord
  belongs_to :user
  belongs_to :caixa
  belongs_to :locacao
end
