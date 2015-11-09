class PlaceSportsController < ApplicationController
  before_action :set_place_sport, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  # GET /place_sports
  # GET /place_sports.json
  def index
    @place_sports = PlaceSport.all
  end

  # GET /place_sports/1
  # GET /place_sports/1.json
  def show
  end

  # GET /place_sports/new
  def new
    @place_sport = PlaceSport.new
  end

  # GET /place_sports/1/edit
  def edit
  end

  # POST /place_sports
  # POST /place_sports.json
  def create
    #@place = Place.find(@_params[:place_sport][:place_id].to_i)
    #@notification = @place.place_sport.build(place_sport_params)
    @place_sport = PlaceSport.new(place_sport_params)

    respond_to do |format|
      if @place_sport.save
        format.html { redirect_to @place_sport, notice: 'Place sport was successfully created.' }
        format.json { render :show, status: :created, location: @place_sport }
      else
        format.html { render :new }
        format.json { render json: @place_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_sports/1
  # PATCH/PUT /place_sports/1.json
  def update
    respond_to do |format|
      if @place_sport.update(place_sport_params)
        format.html { redirect_to @place_sport, notice: 'Place sport was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_sport }
      else
        format.html { render :edit }
        format.json { render json: @place_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_sports/1
  # DELETE /place_sports/1.json
  def destroy
    @place_sport.destroy
    respond_to do |format|
      format.html { redirect_to place_sports_url, notice: 'Place sport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_sport
      @place_sport = PlaceSport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_sport_params
      params.require(:place_sport).permit(:ping_pong_table, :canoe, :soccer_field, :platform_tennis_court, :volleyball_court, :other, :place_id)
    end
end
