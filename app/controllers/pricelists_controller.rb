class PricelistsController < ApplicationController
  before_action :set_pricelist, only: [:show, :edit, :update, :destroy]

  # GET /pricelists
  # GET /pricelists.json
  def index
    @pricelists = Pricelist.select('*').joins(:area).all
    # @pricelists = ActiveRecord::Base.connection.execute("SELECT * FROM pricelists INNER JOIN areas ON areas.id = pricelists.area_id").to_json
  end

  # GET /pricelists/1
  # GET /pricelists/1.json
  def show
  end

  # GET /pricelists/new
  def new
    @pricelist = Pricelist.new
    @areas = Area.all.map { |a| [a.nameArea, a.id] }
  end

  # GET /pricelists/1/edit
  def edit
  end

  # POST /pricelists
  # POST /pricelists.json
  def create
    @pricelist = Pricelist.new(pricelist_params)

    respond_to do |format|
      if @pricelist.save
        format.html { redirect_to @pricelist, notice: 'Pricelist was successfully created.' }
        format.json { render :show, status: :created, location: @pricelist }
      else
        format.html { render :new }
        format.json { render json: @pricelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pricelists/1
  # PATCH/PUT /pricelists/1.json
  def update
    respond_to do |format|
      if @pricelist.update(pricelist_params)
        format.html { redirect_to @pricelist, notice: 'Pricelist was successfully updated.' }
        format.json { render :show, status: :ok, location: @pricelist }
      else
        format.html { render :edit }
        format.json { render json: @pricelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricelists/1
  # DELETE /pricelists/1.json
  def destroy
    @pricelist.destroy
    respond_to do |format|
      format.html { redirect_to pricelists_url, notice: 'Pricelist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricelist
      @pricelist = Pricelist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pricelist_params
      params.require(:pricelist).permit(:price, :area_id)
    end
end
