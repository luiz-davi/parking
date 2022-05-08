class Sangrium < ApplicationRecord
  after_save :operation
  after_destroy :inverse_operation

  belongs_to :user
  belongs_to :estacionamento
  belongs_to :caixa

  def operation
    caixa.update(saldo: caixa.saldo - valor)
  end
  
  def inverse_operation
    caixa.update(saldo: caixa.saldo + valor)

  end
end
