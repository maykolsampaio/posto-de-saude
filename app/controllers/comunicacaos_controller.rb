class ComunicacaosController < ApplicationController
  before_action :set_comunicacao, only: [:show, :edit, :update, :destroy]

  # GET /comunicacaos
  # GET /comunicacaos.json
  def index
    @comunicacaos = Comunicacao.all
  end

  # GET /comunicacaos/1
  # GET /comunicacaos/1.json
  def show
  end

  # GET /comunicacaos/new
  def new
    @comunicacao = Comunicacao.new
  end

  # GET /comunicacaos/1/edit
  def edit
  end

  # POST /comunicacaos
  # POST /comunicacaos.json
  def create
    @comunicacao = Comunicacao.new(comunicacao_params)

    respond_to do |format|
      if @comunicacao.save
        format.html { redirect_to @comunicacao, notice: 'Comunicacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comunicacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @comunicacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comunicacaos/1
  # PATCH/PUT /comunicacaos/1.json
  def update
    respond_to do |format|
      if @comunicacao.update(comunicacao_params)
        format.html { redirect_to @comunicacao, notice: 'Comunicacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comunicacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comunicacaos/1
  # DELETE /comunicacaos/1.json
  def destroy
    @comunicacao.destroy
    respond_to do |format|
      format.html { redirect_to comunicacaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comunicacao
      @comunicacao = Comunicacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comunicacao_params
      params.require(:comunicacao).permit(:nome)
    end
end
