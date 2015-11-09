class PlaceCostsController < ApplicationController
  before_action :set_place_cost, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  # GET /place_costs
  # GET /place_costs.json
  def index
    @place_costs = PlaceCost.all
  end

  # GET /place_costs/1
  # GET /place_costs/1.json
  def show
  end

  # GET /place_costs/new
  def new
    @place_cost = PlaceCost.new
  end

  # GET /place_costs/1/edit
  def edit
  end

  # POST /place_costs
  # POST /place_costs.json
  def create
    @place_cost = PlaceCost.new(place_cost_params)

    respond_to do |format|
      if @place_cost.save
        format.html { redirect_to @place_cost, notice: 'Place cost was successfully created.' }
        format.json { render :show, status: :created, location: @place_cost }
      else
        format.html { render :new }
        format.json { render json: @place_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_costs/1
  # PATCH/PUT /place_costs/1.json
  def update
    respond_to do |format|
      if @place_cost.update(place_cost_params)
        format.html { redirect_to @place_cost, notice: 'Place cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_cost }
      else
        format.html { render :edit }
        format.json { render json: @place_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_costs/1
  # DELETE /place_costs/1.json
  def destroy
    @place_cost.destroy
    respond_to do |format|
      format.html { redirect_to place_costs_url, notice: 'Place cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_cost
      @place_cost = PlaceCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_cost_params
      params.require(:place_cost).permit(:regard, :price, :place_id)
    end
end
