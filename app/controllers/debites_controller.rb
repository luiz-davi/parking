class DebitesController < ApplicationController
  before_action :set_debite, only: %i[ show update destroy ]

  def index
    unless current_user.adm?
      render json: { error: "é preciso ser adm para ver todas os debites" }
    else
      @debites = Debite.all
    end
  end

  def show
  end

  def new
    @debite = Debite.new
  end

  def create
    @debite = Debite.new(debite_params) do |d|
      d.user_id = current_user.id
      d.estacionamento_id = Estacionamento.first.id
      d.caixa_id = Caixa.first.id
    end

    respond_to do |format|
      if @debite.save

        format.html { redirect_to debite_url(@debite), notice: "Debite was successfully created." }
        format.json { render :show, status: :created, location: @debite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @debite.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if current_user.adm?
      @debite.destroy

      respond_to do |format|
        format.html { redirect_to debites_path, notice: "debite was successfully destroyed." }
        format.json { head :no_content }
      end
    else
      render json: {error: "apenas um adm pode remover essa operação"}
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debite
      @debite = Debite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def debite_params
      params.require(:debite).permit(:valor, :motivo)
    end
end
