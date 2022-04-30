class Estacionamento < ApplicationRecord
    has_many :caixas
    has_many :vagas
end
