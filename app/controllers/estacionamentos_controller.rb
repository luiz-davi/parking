class EstacionamentosController < ApplicationController
  before_action :set_estacionamento, only: %i[ show edit update ]

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @estacionamento.update(estacionamento_params)
        format.html { redirect_to estacionamento_url(@estacionamento), notice: "Estacionamento was successfully updated." }
        format.json { render :show, status: :ok, location: @estacionamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estacionamento.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_estacionamento
      @estacionamento = Estacionamento.find(params[:id])
    end

    def estacionamento_params
      params.require(:estacionamento).permit(:nome)
    end
end
