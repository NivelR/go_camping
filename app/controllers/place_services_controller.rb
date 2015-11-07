class PlaceServicesController < ApplicationController
  before_action :set_place_service, only: [:show, :edit, :update, :destroy]

  # GET /place_services
  # GET /place_services.json
  def index
    @place_services = PlaceService.all
  end

  # GET /place_services/1
  # GET /place_services/1.json
  def show
  end

  # GET /place_services/new
  def new
    @place_service = PlaceService.new
  end

  # GET /place_services/1/edit
  def edit
  end

  # POST /place_services
  # POST /place_services.json
  def create
    @place_service = PlaceService.new(place_service_params)

    respond_to do |format|
      if @place_service.save
        format.html { redirect_to @place_service, notice: 'Place service was successfully created.' }
        format.json { render :show, status: :created, location: @place_service }
      else
        format.html { render :new }
        format.json { render json: @place_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_services/1
  # PATCH/PUT /place_services/1.json
  def update
    respond_to do |format|
      if @place_service.update(place_service_params)
        format.html { redirect_to @place_service, notice: 'Place service was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_service }
      else
        format.html { render :edit }
        format.json { render json: @place_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_services/1
  # DELETE /place_services/1.json
  def destroy
    @place_service.destroy
    respond_to do |format|
      format.html { redirect_to place_services_url, notice: 'Place service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_service
      @place_service = PlaceService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_service_params
      params.require(:place_service).permit(:dry_cleaning, :public_transport, :other, :place_id)
    end
end
