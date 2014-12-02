class GregSucksController < ApplicationController
  before_action :set_greg_suck, only: [:show, :edit, :update, :destroy]

  # GET /greg_sucks
  # GET /greg_sucks.json
  def index
    @greg_sucks = GregSuck.all
  end

  # GET /greg_sucks/1
  # GET /greg_sucks/1.json
  def show
  end

  # GET /greg_sucks/new
  def new
    @greg_suck = GregSuck.new
  end

  # GET /greg_sucks/1/edit
  def edit
  end

  # POST /greg_sucks
  # POST /greg_sucks.json
  def create
    @greg_suck = GregSuck.new(greg_suck_params)

    respond_to do |format|
      if @greg_suck.save
        format.html { redirect_to @greg_suck, notice: 'Greg suck was successfully created.' }
        format.json { render :show, status: :created, location: @greg_suck }
      else
        format.html { render :new }
        format.json { render json: @greg_suck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /greg_sucks/1
  # PATCH/PUT /greg_sucks/1.json
  def update
    respond_to do |format|
      if @greg_suck.update(greg_suck_params)
        format.html { redirect_to @greg_suck, notice: 'Greg suck was successfully updated.' }
        format.json { render :show, status: :ok, location: @greg_suck }
      else
        format.html { render :edit }
        format.json { render json: @greg_suck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /greg_sucks/1
  # DELETE /greg_sucks/1.json
  def destroy
    @greg_suck.destroy
    respond_to do |format|
      format.html { redirect_to greg_sucks_url, notice: 'Greg suck was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_greg_suck
      @greg_suck = GregSuck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def greg_suck_params
      params.require(:greg_suck).permit(:sucks)
    end
end
