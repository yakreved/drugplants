class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /plants
  # GET /plants.json
  def index
    if(params[:sort]!= nil)
      @plants = Plant.joins(:family,:region).order(sort_column + " " + sort_direction).search(params[:search])
    else
      @plants = Plant.joins(:family,:region).search(params[:search])
    end
  end

  # GET /plants/1
  # GET /plants/1.json
  def show
  end

  # GET /plants/new
  def new
    @plant = Plant.new
    @families = Family.all
    @regions = Region.all
  end

  # GET /plants/1/edit
  def edit
    @families = Family.all
    @regions = Region.all
  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = Plant.new(plant_params)
    @families = Family.all
    @regions = Region.all

    respond_to do |format|
      if @plant.save
        format.html { redirect_to @plant, notice: 'Растение было успешно добавлено.' }
        format.json { render action: 'show', status: :created, location: @plant }
      else
        format.html { render action: 'new' }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    @families = Family.all
    @regions = Region.all
    
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to @plant, notice: 'Растение было успешно обновлено.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_params
      params.require(:plant).permit(:name, :description, :family_id, :region_id)
    end
    
    def sort_column
      #Plant.column_names.include?(params[:sort]) ? params[:sort] : "name"
      params[:sort]
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
