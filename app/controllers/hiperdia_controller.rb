class HiperdiaController < ApplicationController
  before_action :set_hiperdium, only: [:show, :edit, :update, :destroy]

  # GET /hiperdia
  # GET /hiperdia.json
  def index
    @hiperdia = Hiperdium.all
  end

  # GET /hiperdia/1
  # GET /hiperdia/1.json
  def show
  end

  # GET /hiperdia/new
  def new
    @hiperdium = Hiperdium.new
  end

  # GET /hiperdia/1/edit
  def edit
  end

  # POST /hiperdia
  # POST /hiperdia.json
  def create
    @hiperdium = Hiperdium.new(hiperdium_params)

    respond_to do |format|
      if @hiperdium.save
        format.html { redirect_to @hiperdium, notice: 'Hiperdium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hiperdium }
      else
        format.html { render action: 'new' }
        format.json { render json: @hiperdium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hiperdia/1
  # PATCH/PUT /hiperdia/1.json
  def update
    respond_to do |format|
      if @hiperdium.update(hiperdium_params)
        format.html { redirect_to @hiperdium, notice: 'Hiperdium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hiperdium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hiperdia/1
  # DELETE /hiperdia/1.json
  def destroy
    @hiperdium.destroy
    respond_to do |format|
      format.html { redirect_to hiperdia_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hiperdium
      @hiperdium = Hiperdium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hiperdium_params
      params.require(:hiperdium).permit(:unidade, :ano, :fumante, :visita_acs, :dieta, :medicacao, :exercicios, :pressao_arterial, :ultima_consulta, :mes_id, :observacao, :pessoa_id)
    end
end
