class GrupoComunitariosController < ApplicationController
  before_action :set_grupo_comunitario, only: [:show, :edit, :update, :destroy]

  # GET /grupo_comunitarios
  # GET /grupo_comunitarios.json
  def index
    @grupo_comunitarios = GrupoComunitario.all
  end

  # GET /grupo_comunitarios/1
  # GET /grupo_comunitarios/1.json
  def show
  end

  # GET /grupo_comunitarios/new
  def new
    @grupo_comunitario = GrupoComunitario.new
  end

  # GET /grupo_comunitarios/1/edit
  def edit
  end

  # POST /grupo_comunitarios
  # POST /grupo_comunitarios.json
  def create
    @grupo_comunitario = GrupoComunitario.new(grupo_comunitario_params)

    respond_to do |format|
      if @grupo_comunitario.save
        format.html { redirect_to @grupo_comunitario, notice: 'Grupo comunitario was successfully created.' }
        format.json { render action: 'show', status: :created, location: @grupo_comunitario }
      else
        format.html { render action: 'new' }
        format.json { render json: @grupo_comunitario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_comunitarios/1
  # PATCH/PUT /grupo_comunitarios/1.json
  def update
    respond_to do |format|
      if @grupo_comunitario.update(grupo_comunitario_params)
        format.html { redirect_to @grupo_comunitario, notice: 'Grupo comunitario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @grupo_comunitario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_comunitarios/1
  # DELETE /grupo_comunitarios/1.json
  def destroy
    @grupo_comunitario.destroy
    respond_to do |format|
      format.html { redirect_to grupo_comunitarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_comunitario
      @grupo_comunitario = GrupoComunitario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_comunitario_params
      params.require(:grupo_comunitario).permit(:nome)
    end
end
