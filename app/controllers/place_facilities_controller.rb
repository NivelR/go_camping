class PlaceFacilitiesController < ApplicationController
  before_action :set_place_facility, only: [:show, :edit, :update, :destroy]

  # GET /place_facilities
  # GET /place_facilities.json
  def index
    @place_facilities = PlaceFacility.all
  end

  # GET /place_facilities/1
  # GET /place_facilities/1.json
  def show
  end

  # GET /place_facilities/new
  def new
    @place_facility = PlaceFacility.new
  end

  # GET /place_facilities/1/edit
  def edit
  end

  # POST /place_facilities
  # POST /place_facilities.json
  def create
    @place_facility = PlaceFacility.new(place_facility_params)

    respond_to do |format|
      if @place_facility.save
        format.html { redirect_to @place_facility, notice: 'Place facility was successfully created.' }
        format.json { render :show, status: :created, location: @place_facility }
      else
        format.html { render :new }
        format.json { render json: @place_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_facilities/1
  # PATCH/PUT /place_facilities/1.json
  def update
    respond_to do |format|
      if @place_facility.update(place_facility_params)
        format.html { redirect_to @place_facility, notice: 'Place facility was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_facility }
      else
        format.html { render :edit }
        format.json { render json: @place_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_facilities/1
  # DELETE /place_facilities/1.json
  def destroy
    @place_facility.destroy
    respond_to do |format|
      format.html { redirect_to place_facilities_url, notice: 'Place facility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_facility
      @place_facility = PlaceFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_facility_params
      params.require(:place_facility).permit(:private_toilet, :shared_toilet, :hot_water, :fridge, :kitchen, :microwave, :parking, :boat_ramp, :barbecue_area, :grill_shed, :campfire_place, :swimming_pool, :sound_system, :other, :place_id)
    end
end
