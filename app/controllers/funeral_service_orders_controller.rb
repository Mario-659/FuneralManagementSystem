class FuneralServiceOrdersController < ApplicationController
  before_action :set_funeral_service_order, only: %i[ show edit update destroy ]

  # GET /funeral_service_orders or /funeral_service_orders.json
  def index
    @funeral_service_orders = FuneralServiceOrder.all
  end

  # GET /funeral_service_orders/1 or /funeral_service_orders/1.json
  def show
  end

  # GET /funeral_service_orders/new
  def new
    @funeral_service_order = FuneralServiceOrder.new
  end

  # GET /funeral_service_orders/1/edit
  def edit
  end

  # POST /funeral_service_orders or /funeral_service_orders.json
  def create
    @funeral_service_order = FuneralServiceOrder.new(funeral_service_order_params)

    respond_to do |format|
      if @funeral_service_order.save
        format.html { redirect_to funeral_service_order_url(@funeral_service_order), notice: "Funeral service order was successfully created." }
        format.json { render :show, status: :created, location: @funeral_service_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @funeral_service_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funeral_service_orders/1 or /funeral_service_orders/1.json
  def update
    respond_to do |format|
      if @funeral_service_order.update(funeral_service_order_params)
        format.html { redirect_to funeral_service_order_url(@funeral_service_order), notice: "Funeral service order was successfully updated." }
        format.json { render :show, status: :ok, location: @funeral_service_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @funeral_service_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funeral_service_orders/1 or /funeral_service_orders/1.json
  def destroy
    @funeral_service_order.destroy

    respond_to do |format|
      format.html { redirect_to funeral_service_orders_url, notice: "Funeral service order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funeral_service_order
      @funeral_service_order = FuneralServiceOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funeral_service_order_params
      params.require(:funeral_service_order).permit(:order_id, :funeral_id, :service_id, :quantity)
    end
end
