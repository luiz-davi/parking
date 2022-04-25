class CaixasController < ApplicationController
  before_action :set_caixa, only: %i[ show edit update destroy ]

  def index
    @caixas = Caixa.all
  end

  def show
  end

  def new
    @caixa = Caixa.new
  end

  def edit
  end

  def create
    @caixa = Caixa.new(caixa_params)

    respond_to do |format|
      if @caixa.save
        format.html { redirect_to caixa_url(@caixa), notice: "Caixa was successfully created." }
        format.json { render :show, status: :created, location: @caixa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @caixa.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @caixa.update(caixa_params)
        format.html { redirect_to caixa_url(@caixa), notice: "Caixa was successfully updated." }
        format.json { render :show, status: :ok, location: @caixa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @caixa.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @caixa.destroy

    respond_to do |format|
      format.html { redirect_to caixas_url, notice: "Caixa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_caixa
      @caixa = Caixa.find(params[:id])
    end

    def caixa_params
      params.require(:caixa).permit(:aberto, :saldo)
    end
end
