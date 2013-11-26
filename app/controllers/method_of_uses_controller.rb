class MethodOfUsesController < ApplicationController
  before_action :set_method_of_use, only: [:show, :edit, :update, :destroy]

  # GET /method_of_uses
  # GET /method_of_uses.json
  def index
    @method_of_uses = MethodOfUse.all
  end

  # GET /method_of_uses/1
  # GET /method_of_uses/1.json
  def show
  end

  # GET /method_of_uses/new
  def new
    @method_of_use = MethodOfUse.new
    @paths = PathOfPlant.all
    @plants = Plant.all
  end

  # GET /method_of_uses/1/edit
  def edit
        @plants = Plant.all
        @paths = PathOfPlant.all
  end

  # POST /method_of_uses
  # POST /method_of_uses.json
  def create
    @method_of_use = MethodOfUse.new(method_of_use_params)
    @method_of_use.disease_ids = params[:method_of_use][:disease_ids]

    respond_to do |format|
      if @method_of_use.save
        format.html { redirect_to @method_of_use, notice: 'Метод использования успешно добавлен.' }
        format.json { render action: 'show', status: :created, location: @method_of_use }
      else
        format.html { render action: 'new' }
        format.json { render json: @method_of_use.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /method_of_uses/1
  # PATCH/PUT /method_of_uses/1.json
  def update

    @method_of_use.disease_ids = params[:method_of_use][:disease_ids]

    respond_to do |format|
      if @method_of_use.update(method_of_use_params)

        format.html { redirect_to @method_of_use, notice: 'Метод использования успешно обновлён.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @method_of_use.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /method_of_uses/1
  # DELETE /method_of_uses/1.json
  def destroy
    @method_of_use.destroy
    respond_to do |format|
      format.html { redirect_to method_of_uses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_method_of_use
      @method_of_use = MethodOfUse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def method_of_use_params
      params.require(:method_of_use).permit(:name, :description, :plant_id, :path_of_plant_id)
    end
end
