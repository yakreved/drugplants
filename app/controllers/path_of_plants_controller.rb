class PathOfPlantsController < ApplicationController
  before_action :set_path_of_plant, only: [:show, :edit, :update, :destroy]

  # GET /path_of_plants
  # GET /path_of_plants.json
  def index
    @path_of_plants = PathOfPlant.all
  end

  # GET /path_of_plants/1
  # GET /path_of_plants/1.json
  def show
  end

  # GET /path_of_plants/new
  def new
    @path_of_plant = PathOfPlant.new
  end

  # GET /path_of_plants/1/edit
  def edit
  end

  # POST /path_of_plants
  # POST /path_of_plants.json
  def create
    @path_of_plant = PathOfPlant.new(path_of_plant_params)

    respond_to do |format|
      if @path_of_plant.save
        format.html { redirect_to @path_of_plant, notice: 'Path of plant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @path_of_plant }
      else
        format.html { render action: 'new' }
        format.json { render json: @path_of_plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /path_of_plants/1
  # PATCH/PUT /path_of_plants/1.json
  def update
    respond_to do |format|
      if @path_of_plant.update(path_of_plant_params)
        format.html { redirect_to @path_of_plant, notice: 'Path of plant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @path_of_plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /path_of_plants/1
  # DELETE /path_of_plants/1.json
  def destroy
    @path_of_plant.destroy
    respond_to do |format|
      format.html { redirect_to path_of_plants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_path_of_plant
      @path_of_plant = PathOfPlant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def path_of_plant_params
      params.require(:path_of_plant).permit(:Name)
    end
end
