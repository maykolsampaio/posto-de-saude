class GestantesController < ApplicationController
  before_action :set_gestante, only: [:show, :edit, :update, :destroy]

  # GET /gestantes
  # GET /gestantes.json
  def index
    @gestantes = Gestante.all
  end

  # GET /gestantes/1
  # GET /gestantes/1.json
  def show
  end

  # GET /gestantes/new
  def new
    @gestante = Gestante.new
  end

  # GET /gestantes/1/edit
  def edit
  end

  # POST /gestantes
  # POST /gestantes.json
  def create
    @gestante = Gestante.new(gestante_params)

    respond_to do |format|
      if @gestante.save
        format.html { redirect_to @gestante, notice: 'Gestante was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gestante }
      else
        format.html { render action: 'new' }
        format.json { render json: @gestante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gestantes/1
  # PATCH/PUT /gestantes/1.json
  def update
    respond_to do |format|
      if @gestante.update(gestante_params)
        format.html { redirect_to @gestante, notice: 'Gestante was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gestante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gestantes/1
  # DELETE /gestantes/1.json
  def destroy
    @gestante.destroy
    respond_to do |format|
      format.html { redirect_to gestantes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gestante
      @gestante = Gestante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gestante_params
      params.require(:gestante).permit(:ano, :nome, :endereco, :ultima_regra, :parto, :vacina1, :vacina2, :vacina3, :vacinaR, :puerperio1, :puerperio2)
    end
end
