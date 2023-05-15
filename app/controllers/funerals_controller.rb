class FuneralsController < ApplicationController
  before_action :set_funeral, only: %i[ show edit update destroy ]

  # GET /funerals or /funerals.json
  def index
    @funerals = Funeral.all
  end

  # GET /funerals/1 or /funerals/1.json
  def show
  end

  # GET /funerals/new
  def new
    @funeral = Funeral.new
  end

  # GET /funerals/1/edit
  def edit
  end

  # POST /funerals or /funerals.json
  def create
    @funeral = Funeral.new(funeral_params)

    respond_to do |format|
      if @funeral.save
        format.html { redirect_to funeral_url(@funeral), notice: "Funeral was successfully created." }
        format.json { render :show, status: :created, location: @funeral }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @funeral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funerals/1 or /funerals/1.json
  def update
    respond_to do |format|
      if @funeral.update(funeral_params)
        format.html { redirect_to funeral_url(@funeral), notice: "Funeral was successfully updated." }
        format.json { render :show, status: :ok, location: @funeral }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @funeral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funerals/1 or /funerals/1.json
  def destroy
    @funeral.destroy

    respond_to do |format|
      format.html { redirect_to funerals_url, notice: "Funeral was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funeral
      @funeral = Funeral.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funeral_params
      params.require(:funeral).permit(:funeral_id, :deceased_id, :burial_place, :burial_type, :reception_location, :funeral_date)
    end
end
