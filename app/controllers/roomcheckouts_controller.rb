class RoomcheckoutsController < ApplicationController
  before_action :set_roomcheckout, only: [:show, :edit, :update, :destroy]

  # GET /roomcheckouts
  # GET /roomcheckouts.json
  def index
    @roomcheckouts = Roomcheckout.all
  end

  # GET /roomcheckouts/1
  # GET /roomcheckouts/1.json
  def show
  end

  # GET /roomcheckouts/new
  def new
    @roomcheckout = Roomcheckout.new
  end

  # GET /roomcheckouts/1/edit
  def edit
  end

  # POST /roomcheckouts
  # POST /roomcheckouts.json
  def create
    @roomcheckout = Roomcheckout.new(roomcheckout_params)

    respond_to do |format|
      if @roomcheckout.save
        format.html { redirect_to @roomcheckout, notice: 'Roomcheckout was successfully created.' }
        format.json { render :show, status: :created, location: @roomcheckout }
      else
        format.html { render :new }
        format.json { render json: @roomcheckout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roomcheckouts/1
  # PATCH/PUT /roomcheckouts/1.json
  def update
    respond_to do |format|
      if @roomcheckout.update(roomcheckout_params)
        format.html { redirect_to @roomcheckout, notice: 'Roomcheckout was successfully updated.' }
        format.json { render :show, status: :ok, location: @roomcheckout }
      else
        format.html { render :edit }
        format.json { render json: @roomcheckout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomcheckouts/1
  # DELETE /roomcheckouts/1.json
  def destroy
    @roomcheckout.destroy
    respond_to do |format|
      format.html { redirect_to roomcheckouts_url, notice: 'Roomcheckout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomcheckout
      @roomcheckout = Roomcheckout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roomcheckout_params
      params.require(:roomcheckout).permit(:dayRco, :note, :guest_id)
    end
end
