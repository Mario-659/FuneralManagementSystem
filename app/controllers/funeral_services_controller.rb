class FuneralServicesController < ApplicationController
  before_action :set_funeral_service, only: %i[ show edit update destroy ]

  # GET /funeral_services or /funeral_services.json
  def index
    @funeral_services = FuneralService.all
  end

  # GET /funeral_services/1 or /funeral_services/1.json
  def show
  end

  # GET /funeral_services/new
  def new
    @funeral_service = FuneralService.new
  end

  # GET /funeral_services/1/edit
  def edit
  end

  # POST /funeral_services or /funeral_services.json
  def create
    @funeral_service = FuneralService.new(funeral_service_params)

    respond_to do |format|
      if @funeral_service.save
        format.html { redirect_to funeral_service_url(@funeral_service), notice: "Funeral service was successfully created." }
        format.json { render :show, status: :created, location: @funeral_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @funeral_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funeral_services/1 or /funeral_services/1.json
  def update
    respond_to do |format|
      if @funeral_service.update(funeral_service_params)
        format.html { redirect_to funeral_service_url(@funeral_service), notice: "Funeral service was successfully updated." }
        format.json { render :show, status: :ok, location: @funeral_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @funeral_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funeral_services/1 or /funeral_services/1.json
  def destroy
    @funeral_service.destroy

    respond_to do |format|
      format.html { redirect_to funeral_services_url, notice: "Funeral service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funeral_service
      @funeral_service = FuneralService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funeral_service_params
      params.require(:funeral_service).permit(:service_id, :name, :description, :price)
    end
end
