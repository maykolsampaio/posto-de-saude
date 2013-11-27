class AcsController < ApplicationController
  before_action :set_ac, only: [:show, :edit, :update, :destroy]

  # GET /acs
  # GET /acs.json
  def index
    @acs = Ac.all
  end

  # GET /acs/1
  # GET /acs/1.json
  def show
  end

  # GET /acs/new
  def new
    @ac = Ac.new
  end

  # GET /acs/1/edit
  def edit
  end

  # POST /acs
  # POST /acs.json
  def create
    @ac = Ac.new(ac_params)

    respond_to do |format|
      if @ac.save
        format.html { redirect_to @ac, notice: 'Ac was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ac }
      else
        format.html { render action: 'new' }
        format.json { render json: @ac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acs/1
  # PATCH/PUT /acs/1.json
  def update
    respond_to do |format|
      if @ac.update(ac_params)
        format.html { redirect_to @ac, notice: 'Ac was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acs/1
  # DELETE /acs/1.json
  def destroy
    @ac.destroy
    respond_to do |format|
      format.html { redirect_to acs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ac
      @ac = Ac.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ac_params
      params.require(:ac).permit(:nome, :sinan, :endereco, :idade, :sexo)
    end
end
