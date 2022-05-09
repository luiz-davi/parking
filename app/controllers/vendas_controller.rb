class VendasController < ApplicationController
  before_action :set_venda, only: %i[ show edit ]
  before_action :set_venda_completa, only: %i[ new ]

  def index
    @vendas = Venda.all
  end

  def show
  end

  def new
    
  end

  def edit
  end

  def create
    @venda = Venda.new(venda_params) do |venda|
      venda.user_id = current_user.id
      venda.caixa_id = caixa.id
    end

   atualizar_locacao(@venda.locacao, params[:time])
    
    respond_to do |format|
      if @venda.save
        format.html { redirect_to venda_url(@venda), notice: "Venda was successfully created." }
        format.json { render :show, status: :created, location: @venda }
        
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @venda.errors, status: :unprocessable_entity }
      end
    end

   

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venda
      @venda = Venda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def venda_params
      params.require(:venda).permit(:valor, :tipo_pagamento, :locacao_id)
    end

    def set_venda_completa
      @venda = Venda.new(locacao_id: params[:locacao_id], valor: params[:valor])
    end

    def atualizar_locacao(locacao, saida)
      locacao.update(saida: saida)
    end

end
