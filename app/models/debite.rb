class Debite < ApplicationRecord
  after_save :operation
  after_destroy :inverse_operation

  belongs_to :user
  belongs_to :estacionamento
  belongs_to :caixa

  def operation
    result = Caixa.first.saldo + valor
    Caixa.first.update(saldo: result)
  end

  def inverse_operation
    result = Caixa.first.saldo - valor
    Caixa.first.update(saldo: result)
  end
end
