class EstacionamentosController < ApplicationController
  before_action :set_estacionamento, only: %i[ show edit update destroy ]

  def index
    @estacionamentos = Estacionamento.all
  end

  def show
  end

  def new
    @estacionamento = Estacionamento.new
  end

  def edit
  end

  def create
    @estacionamento = Estacionamento.new(estacionamento_params)

    respond_to do |format|
      if @estacionamento.save
        format.html { redirect_to estacionamento_url(@estacionamento), notice: "Estacionamento was successfully created." }
        format.json { render :show, status: :created, location: @estacionamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estacionamento.errors, status: :unprocessable_entity }
      end
    end
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

  def destroy
    @estacionamento.destroy

    respond_to do |format|
      format.html { redirect_to estacionamentos_url, notice: "Estacionamento was successfully destroyed." }
      format.json { head :no_content }
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
