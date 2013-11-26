class ContraindicationsController < ApplicationController
  before_action :set_contraindication, only: [:show, :edit, :update, :destroy]

  # GET /contraindications
  # GET /contraindications.json
  def index
    @contraindications = Contraindication.all
  end

  # GET /contraindications/1
  # GET /contraindications/1.json
  def show
  end

  # GET /contraindications/new
  def new
    @contraindication = Contraindication.new
  end

  # GET /contraindications/1/edit
  def edit
  end

  # POST /contraindications
  # POST /contraindications.json
  def create
    @contraindication = Contraindication.new(contraindication_params)

    respond_to do |format|
      if @contraindication.save
        format.html { redirect_to @contraindication, notice: 'Contraindication was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contraindication }
      else
        format.html { render action: 'new' }
        format.json { render json: @contraindication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contraindications/1
  # PATCH/PUT /contraindications/1.json
  def update
    respond_to do |format|
      if @contraindication.update(contraindication_params)
        format.html { redirect_to @contraindication, notice: 'Contraindication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contraindication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contraindications/1
  # DELETE /contraindications/1.json
  def destroy
    @contraindication.destroy
    respond_to do |format|
      format.html { redirect_to contraindications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contraindication
      @contraindication = Contraindication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contraindication_params
      params.require(:contraindication).permit(:name)
    end
end
