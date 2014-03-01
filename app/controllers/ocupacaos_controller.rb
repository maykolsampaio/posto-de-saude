class OcupacaosController < ApplicationController
  before_action :set_ocupacao, only: [:show, :edit, :update, :destroy]

  # GET /ocupacaos
  # GET /ocupacaos.json
  def index
    @ocupacaos = Ocupacao.all
  end

  # GET /ocupacaos/1
  # GET /ocupacaos/1.json
  def show
    @ocupacao = Ocupacao.find(params[:id])
    # @pessoas = @ocupacao.pessoas.find_all_by_complete(false)
  end

  # GET /ocupacaos/new
  def new
    @ocupacao = Ocupacao.new
  end

  # GET /ocupacaos/1/edit
  def edit
  end

  # POST /ocupacaos
  # POST /ocupacaos.json
  def create
    @ocupacao = Ocupacao.new(ocupacao_params)
    respond_to do |format|
      if @ocupacao.save
        format.html { redirect_to @ocupacao, notice: 'Ocupacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ocupacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @ocupacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ocupacaos/1
  # PATCH/PUT /ocupacaos/1.json
  def update
    respond_to do |format|
      if @ocupacao.update(ocupacao_params)
        format.html { redirect_to @ocupacao, notice: 'Ocupacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ocupacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ocupacaos/1
  # DELETE /ocupacaos/1.json
  def destroy
    @ocupacao.destroy
    respond_to do |format|
      format.html { redirect_to ocupacaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocupacao
      @ocupacao = Ocupacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ocupacao_params
      params.require(:ocupacao).permit(:nome)
    end
end
