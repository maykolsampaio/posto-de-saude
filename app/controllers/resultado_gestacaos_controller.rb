class ResultadoGestacaosController < ApplicationController
  before_action :set_resultado_gestacao, only: [:show, :edit, :update, :destroy]

  # GET /resultado_gestacaos
  # GET /resultado_gestacaos.json
  def index
    @resultado_gestacaos = ResultadoGestacao.all
  end

  # GET /resultado_gestacaos/1
  # GET /resultado_gestacaos/1.json
  def show
  end

  # GET /resultado_gestacaos/new
  def new
    @resultado_gestacao = ResultadoGestacao.new
  end

  # GET /resultado_gestacaos/1/edit
  def edit
  end

  # POST /resultado_gestacaos
  # POST /resultado_gestacaos.json
  def create
    @resultado_gestacao = ResultadoGestacao.new(resultado_gestacao_params)

    respond_to do |format|
      if @resultado_gestacao.save
        format.html { redirect_to @resultado_gestacao, notice: 'Resultado gestacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resultado_gestacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @resultado_gestacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resultado_gestacaos/1
  # PATCH/PUT /resultado_gestacaos/1.json
  def update
    respond_to do |format|
      if @resultado_gestacao.update(resultado_gestacao_params)
        format.html { redirect_to @resultado_gestacao, notice: 'Resultado gestacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resultado_gestacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resultado_gestacaos/1
  # DELETE /resultado_gestacaos/1.json
  def destroy
    @resultado_gestacao.destroy
    respond_to do |format|
      format.html { redirect_to resultado_gestacaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resultado_gestacao
      @resultado_gestacao = ResultadoGestacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resultado_gestacao_params
      params.require(:resultado_gestacao).permit(:nv, :nm, :ab)
    end
end
