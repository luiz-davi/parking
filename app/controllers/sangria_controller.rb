class SangriaController < ApplicationController
  before_action :set_sangrium, only: %i[ show update destroy ]

  def index
    unless current_user.adm?
      render json: { error: "é preciso ser adm para ver todas as sangrias" }
    else
      @sangria = Sangrium.all
    end
  end

  def show
  end

  def new
    @sangrium = Sangrium.new
  end

  def create
    @sangrium = Sangrium.new(sangrium_params) do |s|
      s.user_id = current_user.id
      s.estacionamento_id = estacionamento.id
      s.caixa_id = caixa.id
    end

    if @sangrium.valor <= Caixa.first.saldo
      respond_to do |format|
        
        if @sangrium.save
          format.html { redirect_to sangrium_url(@sangrium), notice: "Sangrium was successfully created." }
          format.json { render :show, status: :created, location: @sangrium }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @sangrium.errors, status: :unprocessable_entity }
        end
      end
    else
      render json: {error: "saldo do insuficiente"}
    end
  end

  def destroy
    if current_user.adm?
      @sangrium.destroy

      respond_to do |format|
        format.html { redirect_to sangria_path, notice: "sangrium was successfully destroyed." }
        format.json { head :no_content }
      end
    else
      render json: {error: "apenas um adm pode remover essa operação"}
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sangrium
      @sangrium = Sangrium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sangrium_params
      params.require(:sangrium).permit(:valor, :motivo)
    end
end