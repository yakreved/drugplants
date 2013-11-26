class DiseasesController < ApplicationController
  before_action :set_disease, only: [:show, :edit, :update, :destroy]

  # GET /diseases
  # GET /diseases.json
  def index
    @diseases = Disease.all
  end

  # GET /diseases/1
  # GET /diseases/1.json
  def show
  end

  # GET /diseases/new
  def new
    @disease = Disease.new
  end

  # GET /diseases/1/edit
  def edit
  end

  # POST /diseases
  # POST /diseases.json
  def create
    @disease = Disease.new(disease_params)

    respond_to do |format|
      @disease.method_of_use_ids = params[:disease][:method_of_use_ids]
      if @disease.save
        format.html { redirect_to @disease, notice: 'Заболевание было успешно добавлено.' }
        format.json { render action: 'show', status: :created, location: @disease }
      else
        format.html { render action: 'new' }
        format.json { render json: @disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diseases/1
  # PATCH/PUT /diseases/1.json
  def update
    #@disease.update_attributes(params[:disease].permit)
    respond_to do |format|
      @disease.method_of_use_ids = params[:disease][:method_of_use_ids]
      if @disease.save
        format.html { redirect_to @disease, notice: 'Заболевание было успешно обновлено.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diseases/1
  # DELETE /diseases/1.json
  def destroy
    @disease.destroy
    respond_to do |format|
      format.html { redirect_to diseases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease
      @disease = Disease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disease_params
      params.require(:disease).permit(:name, :discription)
    end
end
