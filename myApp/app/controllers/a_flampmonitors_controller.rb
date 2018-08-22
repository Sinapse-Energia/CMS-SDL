class AFlampmonitorsController < ApplicationController
  before_action :set_a_flampmonitor, only: [:show, :edit, :update, :destroy]

  # GET /a_flampmonitors
  # GET /a_flampmonitors.json
  def index
    @a_flampmonitors = AFlampmonitor.all
  end

  # GET /a_flampmonitors/1
  # GET /a_flampmonitors/1.json
  def show
  end

  # GET /a_flampmonitors/new
  def new
    @a_flampmonitor = AFlampmonitor.new
  end

  # GET /a_flampmonitors/1/edit
  def edit
  end

  # POST /a_flampmonitors
  # POST /a_flampmonitors.json
  def create
    @a_flampmonitor = AFlampmonitor.new(a_flampmonitor_params)

    respond_to do |format|
      if @a_flampmonitor.save
        format.html { redirect_to @a_flampmonitor, notice: 'A flampmonitor was successfully created.' }
        format.json { render :show, status: :created, location: @a_flampmonitor }
      else
        format.html { render :new }
        format.json { render json: @a_flampmonitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_flampmonitors/1
  # PATCH/PUT /a_flampmonitors/1.json
  def update
    respond_to do |format|
      if @a_flampmonitor.update(a_flampmonitor_params)
        format.html { redirect_to @a_flampmonitor, notice: 'A flampmonitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_flampmonitor }
      else
        format.html { render :edit }
        format.json { render json: @a_flampmonitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_flampmonitors/1
  # DELETE /a_flampmonitors/1.json
  def destroy
    @a_flampmonitor.destroy
    respond_to do |format|
      format.html { redirect_to a_flampmonitors_url, notice: 'A flampmonitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_flampmonitor
      @a_flampmonitor = AFlampmonitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_flampmonitor_params
      params.require(:a_flampmonitor).permit(:value, :seqbridge, :seqcms, :adesc_flampmonitor_id, :f_lampmonitor_id)
    end
end