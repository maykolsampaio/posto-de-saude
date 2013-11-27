class GestacaosController < ApplicationController
  before_action :set_gestacao, only: [:show, :edit, :update, :destroy]

  # GET /gestacaos
  # GET /gestacaos.json
  def index
    @gestacaos = Gestacao.all
  end

  # GET /gestacaos/1
  # GET /gestacaos/1.json
  def show
  end

  # GET /gestacaos/new
  def new
    @gestacao = Gestacao.new
  end

  # GET /gestacaos/1/edit
  def edit
  end

  # POST /gestacaos
  # POST /gestacaos.json
  def create
    @gestacao = Gestacao.new(gestacao_params)

    respond_to do |format|
      if @gestacao.save
        format.html { redirect_to @gestacao, notice: 'Gestacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gestacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @gestacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gestacaos/1
  # PATCH/PUT /gestacaos/1.json
  def update
    respond_to do |format|
      if @gestacao.update(gestacao_params)
        format.html { redirect_to @gestacao, notice: 'Gestacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gestacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gestacaos/1
  # DELETE /gestacaos/1.json
  def destroy
    @gestacao.destroy
    respond_to do |format|
      format.html { redirect_to gestacaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gestacao
      @gestacao = Gestacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gestacao_params
      params.require(:gestacao).permit(:mes, :estado_nutricional, :pre_natal, :visita_acs)
    end
end
