class Venda < ApplicationRecord
  after_create :cobrar_caixa

  belongs_to :user
  belongs_to :caixa
  belongs_to :locacao

  def cobrar_caixa
    caixa.update(saldo: caixa.saldo + valor)
    locacao.vaga.update(disponibilidade: true)
  end
end
