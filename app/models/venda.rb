class Venda < ApplicationRecord
  after_create :cobrar_caixa

  enum tipo_pagamento: {dinheiro: 1, cartao: 2, pix: 3}

  belongs_to :user
  belongs_to :caixa
  belongs_to :locacao

  def cobrar_caixa
    caixa.update(saldo: caixa.saldo + valor)
    locacao.vaga.update(disponibilidade: true)
  end
end
