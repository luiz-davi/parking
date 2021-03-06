class LocacaosController < ApplicationController
  before_action :set_locacao, only: %i[ show update finalizar]

  def index
    @locacaos = Locacao.where("locacaos.saida IS NULL")
  end

  def show
  end

  def new
    @locacao = Locacao.new
    @locacao.vaga_id = vaga_id if vaga_id
  end


  def create
    
    @locacao = Locacao.new(locacao_params)

    respond_to do |format|
      if @locacao.save
        @locacao.update(entrada: Time.current)
        @locacao.vaga.update(disponibilidade: false)
        format.html { redirect_to locacaos_path, notice: "Locacao was successfully created." }
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


  def finalizar
  end

  private
    def set_locacao
      id = params[:id] || params[:locacao_id]
      @locacao = Locacao.find(id)
    end

    def locacao_params
      params.require(:locacao).permit(:placa, :vaga_id)
    end

    def vaga_id
      params[:vaga_id]
    end
end
