class HourController < ApplicationController
  before_action :set_hour, only: [:show, :edit, :update, :destroy]

  def index
    @location = Location.find(params[:location_id])
    @hours = @location.hours

    respond_to do |format|
      format.json { render :json => @hour }
      format.html
    end

  end

  def show
    @location = Location.find(params[:location_id])
    @hour = @location.hours.find(params[:id])
  end

  def new
    @location = Location.find(params[:location_id])
    @hour = @location.hours.build
  end

  def edit
    @location = Location.find(params[:location_id])
    @hour = @location.hours.find(params[:id])
  end

  def create
    @location = Location.find(params[:location_id])
    @hour = @location.hours.create(params[:hour])

    respond_to do |format|
      if @hour.save
        format.html { redirect_to @location, notice: 'Hour was successfully created.' }
        format.json { render :show, status: :created, location: @hour }
      else
        format.html { render :new }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @location = Location.find(params[:location_id])
    @hour = @location.hours.find(params[:id])

    respond_to do |format|
      if @hour.update(params[:hour])
        format.html { redirect_to @hour, notice: 'Hour was successfully updated.' }
        format.json { render :show, status: :ok, location: @hour }
      else
        format.html { render :edit }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @location = Location.find(params[:location_id])
    @hour = @location.hours.find(params[:id])
    @hour.destroy
    respond_to do |format|
      format.html { redirect_to hours_url, notice: 'Hour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hour
      @location = Location.find(params[:location_id])
      @hour = @location.hours.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hour_params
      params.require(:hour).permit(:type, :start_time, :end_time)
    end
end
