class VfLightSensorEventsController < ApplicationController
  before_action :set_vf_light_sensor_event, only: [:show, :edit, :update, :destroy]

  # GET /vf_light_sensor_events
  # GET /vf_light_sensor_events.json
  def index
    @vf_light_sensor_events = VfLightSensorEvent.all
  end

  # GET /vf_light_sensor_events/1
  # GET /vf_light_sensor_events/1.json
  def show
  end

  # GET /vf_light_sensor_events/new
  def new
    @vf_light_sensor_event = VfLightSensorEvent.new
  end

  # GET /vf_light_sensor_events/1/edit
  def edit
  end

  # POST /vf_light_sensor_events
  # POST /vf_light_sensor_events.json
  def create
    @vf_light_sensor_event = VfLightSensorEvent.new(vf_light_sensor_event_params)

    respond_to do |format|
      if @vf_light_sensor_event.save
        format.html { redirect_to @vf_light_sensor_event, notice: 'Vf light sensor event was successfully created.' }
        format.json { render :show, status: :created, location: @vf_light_sensor_event }
      else
        format.html { render :new }
        format.json { render json: @vf_light_sensor_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vf_light_sensor_events/1
  # PATCH/PUT /vf_light_sensor_events/1.json
  def update
    respond_to do |format|
      if @vf_light_sensor_event.update(vf_light_sensor_event_params)
        format.html { redirect_to @vf_light_sensor_event, notice: 'Vf light sensor event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vf_light_sensor_event }
      else
        format.html { render :edit }
        format.json { render json: @vf_light_sensor_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vf_light_sensor_events/1
  # DELETE /vf_light_sensor_events/1.json
  def destroy
    @vf_light_sensor_event.destroy
    respond_to do |format|
      format.html { redirect_to vf_light_sensor_events_url, notice: 'Vf light sensor event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vf_light_sensor_event
      @vf_light_sensor_event = VfLightSensorEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vf_light_sensor_event_params
      params.require(:vf_light_sensor_event).permit(:name)
    end
end