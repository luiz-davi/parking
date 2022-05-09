class AberturasController < ApplicationController
  before_action :set_abertura, only: %i[ show edit update destroy ]

  # GET /aberturas or /aberturas.json
  def index
    @aberturas = Abertura.all
  end

  # GET /aberturas/1 or /aberturas/1.json
  def show
  end

  # GET /aberturas/new
  def new
    @abertura = Abertura.new
  end

  # GET /aberturas/1/edit
  def edit
  end

  # POST /aberturas or /aberturas.json
  def create
    @abertura = Abertura.new(abertura_params)

    respond_to do |format|
      if @abertura.save
        format.html { redirect_to abertura_url(@abertura), notice: "Abertura was successfully created." }
        format.json { render :show, status: :created, location: @abertura }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @abertura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aberturas/1 or /aberturas/1.json
  def update
    respond_to do |format|
      if @abertura.update(abertura_params)
        format.html { redirect_to abertura_url(@abertura), notice: "Abertura was successfully updated." }
        format.json { render :show, status: :ok, location: @abertura }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @abertura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aberturas/1 or /aberturas/1.json
  def destroy
    @abertura.destroy

    respond_to do |format|
      format.html { redirect_to aberturas_url, notice: "Abertura was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abertura
      @abertura = Abertura.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def abertura_params
      params.require(:abertura).permit(:valor, :user_id, :caixa_id)
    end
end
