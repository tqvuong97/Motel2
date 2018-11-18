class RoomrentalmanagersController < ApplicationController
  before_action :set_roomrentalmanager, only: [:show, :edit, :update, :destroy]

  # GET /roomrentalmanagers
  # GET /roomrentalmanagers.json
  def index
    @roomrentalmanagers = Roomrentalmanager.all
  end

  # GET /roomrentalmanagers/1
  # GET /roomrentalmanagers/1.json
  def show
  end

  # GET /roomrentalmanagers/new
  def new
    @roomrentalmanager = Roomrentalmanager.new
  end

  # GET /roomrentalmanagers/1/edit
  def edit
  end

  # POST /roomrentalmanagers
  # POST /roomrentalmanagers.json
  def create
    @roomrentalmanager = Roomrentalmanager.new(roomrentalmanager_params)

    respond_to do |format|
      if @roomrentalmanager.save
        format.html { redirect_to @roomrentalmanager, notice: 'Roomrentalmanager was successfully created.' }
        format.json { render :show, status: :created, location: @roomrentalmanager }
      else
        format.html { render :new }
        format.json { render json: @roomrentalmanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roomrentalmanagers/1
  # PATCH/PUT /roomrentalmanagers/1.json
  def update
    respond_to do |format|
      if @roomrentalmanager.update(roomrentalmanager_params)
        format.html { redirect_to @roomrentalmanager, notice: 'Roomrentalmanager was successfully updated.' }
        format.json { render :show, status: :ok, location: @roomrentalmanager }
      else
        format.html { render :edit }
        format.json { render json: @roomrentalmanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomrentalmanagers/1
  # DELETE /roomrentalmanagers/1.json
  def destroy
    @roomrentalmanager.destroy
    respond_to do |format|
      format.html { redirect_to roomrentalmanagers_url, notice: 'Roomrentalmanager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomrentalmanager
      @roomrentalmanager = Roomrentalmanager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roomrentalmanager_params
      params.require(:roomrentalmanager).permit(:dayRent, :statusRent, :deposit, :guest_id)
    end
end
