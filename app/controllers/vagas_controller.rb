class VagasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vaga, only: %i[ show edit update destroy ]

  def index
    @vagas = Vaga.where(disponibilidade: true)
  end

  def show
  end

  def new
    
  end

  def edit
  end

  def create
    @vaga = Vaga.new
    @vaga.estacionamento = estacionamento

    respond_to do |format|
      if @vaga.save
        format.html { redirect_to root_path, notice: "Vaga was successfully created." }
        format.json { render :show, status: :created, location: @vaga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @vaga.update(vaga_params)
        format.html { redirect_to vaga_url(@vaga), notice: "Vaga was successfully updated." }
        format.json { render :show, status: :ok, location: @vaga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vaga.destroy

    respond_to do |format|
      format.html { redirect_to vagas_url, notice: "Vaga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def finalzar
    # saida inicializada como time.now
    # fazer calculo
  end

  private
    def set_vaga
      @vaga = Vaga.find(params[:id])
    end
end
