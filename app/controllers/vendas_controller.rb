class VendasController < ApplicationController
  before_action :set_venda, only: %i[ show edit ]
  before_action :set_venda_completa, only: %i[ new ]

  # GET /vendas or /vendas.json
  def index
    @vendas = Venda.all
  end

  # GET /vendas/1 or /vendas/1.json
  def show
  end

  # GET /vendas/new
  def new
    puts "-=-=-=-=-=-"
    puts params[:locacao_id]
  end

  # GET /vendas/1/edit
  def edit
  end

  # POST /vendas or /vendas.json
  def create
    @venda = Venda.new(venda_params) do |venda|
      venda.user_id = current_user.id
      venda.caixa_id = caixa.id
    end

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

    # def set_locacao
    #   @locacao = Locacao.find(params[:locacao_id].to_i)
    # end
end
