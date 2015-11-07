class PlaceNearsController < ApplicationController
  before_action :set_place_near, only: [:show, :edit, :update, :destroy]

  # GET /place_nears
  # GET /place_nears.json
  def index
    @place_nears = PlaceNear.all
  end

  # GET /place_nears/1
  # GET /place_nears/1.json
  def show
  end

  # GET /place_nears/new
  def new
    @place_near = PlaceNear.new
  end

  # GET /place_nears/1/edit
  def edit
  end

  # POST /place_nears
  # POST /place_nears.json
  def create
    @place_near = PlaceNear.new(place_near_params)

    respond_to do |format|
      if @place_near.save
        format.html { redirect_to @place_near, notice: 'Place near was successfully created.' }
        format.json { render :show, status: :created, location: @place_near }
      else
        format.html { render :new }
        format.json { render json: @place_near.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_nears/1
  # PATCH/PUT /place_nears/1.json
  def update
    respond_to do |format|
      if @place_near.update(place_near_params)
        format.html { redirect_to @place_near, notice: 'Place near was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_near }
      else
        format.html { render :edit }
        format.json { render json: @place_near.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_nears/1
  # DELETE /place_nears/1.json
  def destroy
    @place_near.destroy
    respond_to do |format|
      format.html { redirect_to place_nears_url, notice: 'Place near was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_near
      @place_near = PlaceNear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_near_params
      params.require(:place_near).permit(:kiosk, :disco, :beach, :national_park, :other, :place_id)
    end
end
