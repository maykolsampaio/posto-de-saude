class FatorRiscosController < ApplicationController
  before_action :set_fator_risco, only: [:show, :edit, :update, :destroy]

  # GET /fator_riscos
  # GET /fator_riscos.json
  def index
    @fator_riscos = FatorRisco.all
  end

  # GET /fator_riscos/1
  # GET /fator_riscos/1.json
  def show
  end

  # GET /fator_riscos/new
  def new
    @fator_risco = FatorRisco.new
  end

  # GET /fator_riscos/1/edit
  def edit
  end

  # POST /fator_riscos
  # POST /fator_riscos.json
  def create
    @fator_risco = FatorRisco.new(fator_risco_params)

    respond_to do |format|
      if @fator_risco.save
        format.html { redirect_to @fator_risco, notice: 'Fator risco was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fator_risco }
      else
        format.html { render action: 'new' }
        format.json { render json: @fator_risco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fator_riscos/1
  # PATCH/PUT /fator_riscos/1.json
  def update
    respond_to do |format|
      if @fator_risco.update(fator_risco_params)
        format.html { redirect_to @fator_risco, notice: 'Fator risco was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fator_risco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fator_riscos/1
  # DELETE /fator_riscos/1.json
  def destroy
    @fator_risco.destroy
    respond_to do |format|
      format.html { redirect_to fator_riscos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fator_risco
      @fator_risco = FatorRisco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fator_risco_params
      params.require(:fator_risco).permit(:desc)
    end
end
