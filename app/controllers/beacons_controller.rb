class BeaconsController < ApplicationController
  before_action :set_beacon, only: [:show, :update, :destroy]

  # GET /beacons
  # GET /beacons.json
  def index
    @beacons = Beacon.filter(params)
  end

  # GET /beacons/1
  # GET /beacons/1.json
  def show
  end

  # POST /beacons
  # POST /beacons.json
  def create
    @beacon = Beacon.new(beacon_params)

    if @beacon.save
      render :show, status: :created, location: @beacon
    else
      render json: @beacon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beacons/1
  # PATCH/PUT /beacons/1.json
  def update
    if @beacon.update(beacon_params)
      render :show, status: :ok, location: @beacon
    else
      render json: @beacon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beacons/1
  # DELETE /beacons/1.json
  def destroy
    @beacon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beacon
      @beacon = Beacon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beacon_params
      params.require(:beacon).permit(:description, :id, :city_id)
    end
end
