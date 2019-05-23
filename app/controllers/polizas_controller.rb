class PolizasController < ApplicationController
  before_action :set_poliza, only: [:show, :edit, :update, :destroy]

  # GET /polizas
  # GET /polizas.json
  def index
    @polizas = Poliza.all
  end

  # GET /polizas/1
  # GET /polizas/1.json
  def show
  end

  # GET /polizas/new
  def new
    @poliza = Poliza.new
  end

  # GET /polizas/1/edit
  def edit
  end

  # POST /polizas
  # POST /polizas.json
  def create
    @poliza = Poliza.new(poliza_params)

    respond_to do |format|
      if @poliza.save
        format.html { redirect_to @poliza, notice: 'Poliza was successfully created.' }
        format.json { render :show, status: :created, location: @poliza }
      else
        format.html { render :new }
        format.json { render json: @poliza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polizas/1
  # PATCH/PUT /polizas/1.json
  def update
    respond_to do |format|
      if @poliza.update(poliza_params)
        format.html { redirect_to @poliza, notice: 'Poliza was successfully updated.' }
        format.json { render :show, status: :ok, location: @poliza }
      else
        format.html { render :edit }
        format.json { render json: @poliza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polizas/1
  # DELETE /polizas/1.json
  def destroy
    @poliza.destroy
    respond_to do |format|
      format.html { redirect_to polizas_url, notice: 'Poliza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poliza
      @poliza = Poliza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poliza_params
      params.require(:poliza).permit(:name)
    end
end
