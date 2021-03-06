class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.all

    respond_to do |format|
      format.html #index.html.erb
      format.json { render json: @activities}
    end
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    @destination = Destination.find(params[:destination_id])
    @activity = Activity.find(params[:id])

    respond_to do |format|
      format.html #show.html.erb
      format.json { render json: @activity}
    end
  end

  # GET /activities/new
  def new
    @destination = Destination.find(params[:destination_id])
    @activity = Activity.new

    respond_to do |format|
      format.html #show.html.erb
      format.json { render json: @activity}
    end
  end

  # GET /activities/1/edit
  def edit
    @destination = Destination.find(params[:destination_id])
    @activity = Activity.find(params[:id])
  end

  # POST /activities
  # POST /activities.json
  def create
    @destination = Destination.find(params[:destination_id])
    @activity = @destination.activities.new(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to destination_activity_path(@destination, @activity), notice: 'Activity was successfully created.' }
        format.json { render json: @activity, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    @activity = Activity.find(params[:id])
    @destination = @activity.destination

    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to destination_activity_path(@activity.destination, @activity), notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:name, :description, :location, :cost, :date)
    end
end
