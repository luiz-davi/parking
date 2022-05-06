class CaixasController < ApplicationController
  before_action :set_caixa, only: %i[ show  ]

  def show
  end


  private
    def set_caixa
      @caixa = Caixa.find(caixa.id)
    end

    def caixa_params
      params.require(:caixa).permit(:aberto, :saldo)
    end
end
