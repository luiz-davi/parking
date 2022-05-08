class Vaga < ApplicationRecord
  belongs_to :estacionamento
  has_many :locacaos, dependent: :destroy
end
