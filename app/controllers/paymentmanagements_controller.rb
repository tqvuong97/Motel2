class PaymentmanagementsController < ApplicationController
  before_action :set_paymentmanagement, only: [:show, :edit, :update, :destroy]

  # GET /paymentmanagements
  # GET /paymentmanagements.json
  def index
    @paymentmanagements = Paymentmanagement.all
  end

  # GET /paymentmanagements/1
  # GET /paymentmanagements/1.json
  def show
  end

  # GET /paymentmanagements/new
  def new
    @paymentmanagement = Paymentmanagement.new
  end

  # GET /paymentmanagements/1/edit
  def edit
  end

  # POST /paymentmanagements
  # POST /paymentmanagements.json
  def create
    @paymentmanagement = Paymentmanagement.new(paymentmanagement_params)

    respond_to do |format|
      if @paymentmanagement.save
        format.html { redirect_to @paymentmanagement, notice: 'Paymentmanagement was successfully created.' }
        format.json { render :show, status: :created, location: @paymentmanagement }
      else
        format.html { render :new }
        format.json { render json: @paymentmanagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymentmanagements/1
  # PATCH/PUT /paymentmanagements/1.json
  def update
    respond_to do |format|
      if @paymentmanagement.update(paymentmanagement_params)
        format.html { redirect_to @paymentmanagement, notice: 'Paymentmanagement was successfully updated.' }
        format.json { render :show, status: :ok, location: @paymentmanagement }
      else
        format.html { render :edit }
        format.json { render json: @paymentmanagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymentmanagements/1
  # DELETE /paymentmanagements/1.json
  def destroy
    @paymentmanagement.destroy
    respond_to do |format|
      format.html { redirect_to paymentmanagements_url, notice: 'Paymentmanagement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymentmanagement
      @paymentmanagement = Paymentmanagement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paymentmanagement_params
      params.require(:paymentmanagement).permit(:dayPM, :guest_id, :service_id, :room_id, :electricity, :internet, :water, :roomPrice, :debt)
    end
end
