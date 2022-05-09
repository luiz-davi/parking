class FechamentosController < ApplicationController
  before_action :set_fechamento, only: %i[ show edit update destroy ]

  # GET /fechamentos or /fechamentos.json
  def index
    @fechamentos = Fechamento.all
  end

  # GET /fechamentos/1 or /fechamentos/1.json
  def show
  end

  # GET /fechamentos/new
  def new
    @fechamento = Fechamento.new
  end

  # GET /fechamentos/1/edit
  def edit
  end

  # POST /fechamentos or /fechamentos.json
  def create
    @fechamento = Fechamento.new(fechamento_params)

    respond_to do |format|
      if @fechamento.save
        format.html { redirect_to fechamento_url(@fechamento), notice: "Fechamento was successfully created." }
        format.json { render :show, status: :created, location: @fechamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fechamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fechamentos/1 or /fechamentos/1.json
  def update
    respond_to do |format|
      if @fechamento.update(fechamento_params)
        format.html { redirect_to fechamento_url(@fechamento), notice: "Fechamento was successfully updated." }
        format.json { render :show, status: :ok, location: @fechamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fechamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fechamentos/1 or /fechamentos/1.json
  def destroy
    @fechamento.destroy

    respond_to do |format|
      format.html { redirect_to fechamentos_url, notice: "Fechamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fechamento
      @fechamento = Fechamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fechamento_params
      params.require(:fechamento).permit(:user_id, :caixa_id, :valor, :obs, :valor_anterior, :status)
    end
end
