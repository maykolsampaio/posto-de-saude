class TuberculosesController < ApplicationController
  before_action :set_tuberculose, only: [:show, :edit, :update, :destroy]

  # GET /tuberculoses
  # GET /tuberculoses.json
  def index
    @tuberculoses = Tuberculose.all
  end

  # GET /tuberculoses/1
  # GET /tuberculoses/1.json
  def show
  end

  # GET /tuberculoses/new
  def new
    @tuberculose = Tuberculose.new
  end

  # GET /tuberculoses/1/edit
  def edit
  end

  # POST /tuberculoses
  # POST /tuberculoses.json
  def create
    @tuberculose = Tuberculose.new(tuberculose_params)

    respond_to do |format|
      if @tuberculose.save
        format.html { redirect_to @tuberculose, notice: 'Tuberculose was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tuberculose }
      else
        format.html { render action: 'new' }
        format.json { render json: @tuberculose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuberculoses/1
  # PATCH/PUT /tuberculoses/1.json
  def update
    respond_to do |format|
      if @tuberculose.update(tuberculose_params)
        format.html { redirect_to @tuberculose, notice: 'Tuberculose was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tuberculose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuberculoses/1
  # DELETE /tuberculoses/1.json
  def destroy
    @tuberculose.destroy
    respond_to do |format|
      format.html { redirect_to tuberculoses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuberculose
      @tuberculose = Tuberculose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuberculose_params
      params.require(:tuberculose).permit(:ano, :data_da_visita, :reacoes_indesejaveis, :data_da_ultima_consulta, :exame_escarro, :comunicantes_examinados, :bcg_menor_cinco_anos, :comunicantes_existentes, :comunicantes_examinados, :comunicantes_menor_cinco_anos)
    end
end
