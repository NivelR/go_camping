class NearPlacesController < ApplicationController
  before_action :set_near_place, only: [:show, :edit, :update, :destroy]

  # GET /near_places
  # GET /near_places.json
  def index
    @near_places = NearPlace.all
  end

  # GET /near_places/1
  # GET /near_places/1.json
  def show
  end

  # GET /near_places/new
  def new
    @near_place = NearPlace.new
  end

  # GET /near_places/1/edit
  def edit
  end

  # POST /near_places
  # POST /near_places.json
  def create
    #@place = Place.find(@_params[:near_place][:place_id].to_i)
    #@near_place = @place.near_place.build(near_place_params)
    @near_place = NearPlace.new(near_place_params)

    respond_to do |format|
      if @near_place.save
        format.html { redirect_to @near_place, notice: 'Near place was successfully created.' }
        format.json { render :show, status: :created, location: @near_place }
      else
        format.html { render :new }
        format.json { render json: @near_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /near_places/1
  # PATCH/PUT /near_places/1.json
  def update
    respond_to do |format|
      if @near_place.update(near_place_params)
        format.html { redirect_to @near_place, notice: 'Near place was successfully updated.' }
        format.json { render :show, status: :ok, location: @near_place }
      else
        format.html { render :edit }
        format.json { render json: @near_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /near_places/1
  # DELETE /near_places/1.json
  def destroy
    @near_place.destroy
    respond_to do |format|
      format.html { redirect_to near_places_url, notice: 'Near place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_near_place
      @near_place = NearPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def near_place_params
      params.require(:near_place).permit(:kiosk, :disco, :beach, :national_park, :other, :place_id)
    end
end
