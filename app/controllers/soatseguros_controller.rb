class SoatsegurosController < ApplicationController
  before_action :set_soatseguro, only: [:show, :edit, :update, :destroy]

  # GET /soatseguros
  # GET /soatseguros.json
  def index
    @soatseguros = Soatseguro.all
  end

  # GET /soatseguros/1
  # GET /soatseguros/1.json
  def show
  end

  # GET /soatseguros/new
  def new
    @soatseguro = Soatseguro.new
  end

  # GET /soatseguros/1/edit
  def edit
  end

  # POST /soatseguros
  # POST /soatseguros.json
  def create
    @soatseguro = Soatseguro.new(soatseguro_params)

    respond_to do |format|
      if @soatseguro.save
        format.html { redirect_to @soatseguro, notice: 'Soatseguro was successfully created.' }
        format.json { render :show, status: :created, location: @soatseguro }
      else
        format.html { render :new }
        format.json { render json: @soatseguro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soatseguros/1
  # PATCH/PUT /soatseguros/1.json
  def update
    respond_to do |format|
      if @soatseguro.update(soatseguro_params)
        format.html { redirect_to @soatseguro, notice: 'Soatseguro was successfully updated.' }
        format.json { render :show, status: :ok, location: @soatseguro }
      else
        format.html { render :edit }
        format.json { render json: @soatseguro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soatseguros/1
  # DELETE /soatseguros/1.json
  def destroy
    @soatseguro.destroy
    respond_to do |format|
      format.html { redirect_to soatseguros_url, notice: 'Soatseguro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soatseguro
      @soatseguro = Soatseguro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soatseguro_params
      params.require(:soatseguro).permit(:Placa, :del, :vehiculo, :Fecha, :inicio, :vigencia, :Fecha, :fin, :vigencia, :Numero, :pasajeros, :Cilindraje, :Clase, :Toneladas, :Edad, :Precio)
    end
end
