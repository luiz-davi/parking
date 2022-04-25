class LocacaosController < ApplicationController
  before_action :set_locacao, only: %i[ show edit update destroy ]

  def index
    @locacaos = Locacao.all
  end

  def show
  end

  def new
    @locacao = Locacao.new
  end

  def edit
  end

  def create
    @locacao = Locacao.new(locacao_params)

    respond_to do |format|
      if @locacao.save
        format.html { redirect_to locacao_url(@locacao), notice: "Locacao was successfully created." }
        format.json { render :show, status: :created, location: @locacao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @locacao.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @locacao.update(locacao_params)
        format.html { redirect_to locacao_url(@locacao), notice: "Locacao was successfully updated." }
        format.json { render :show, status: :ok, location: @locacao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @locacao.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @locacao.destroy

    respond_to do |format|
      format.html { redirect_to locacaos_url, notice: "Locacao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_locacao
      @locacao = Locacao.find(params[:id])
    end

    def locacao_params
      params.require(:locacao).permit(:placa, :vaga_id)
    end
end
