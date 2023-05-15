class DeceasedsController < ApplicationController
  before_action :set_deceased, only: %i[ show edit update destroy ]

  # GET /deceaseds or /deceaseds.json
  def index
    @deceaseds = Deceased.all
  end

  # GET /deceaseds/1 or /deceaseds/1.json
  def show
  end

  # GET /deceaseds/new
  def new
    @deceased = Deceased.new
  end

  # GET /deceaseds/1/edit
  def edit
  end

  # POST /deceaseds or /deceaseds.json
  def create
    @deceased = Deceased.new(deceased_params)

    respond_to do |format|
      if @deceased.save
        format.html { redirect_to deceased_url(@deceased), notice: "Deceased was successfully created." }
        format.json { render :show, status: :created, location: @deceased }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deceased.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deceaseds/1 or /deceaseds/1.json
  def update
    respond_to do |format|
      if @deceased.update(deceased_params)
        format.html { redirect_to deceased_url(@deceased), notice: "Deceased was successfully updated." }
        format.json { render :show, status: :ok, location: @deceased }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deceased.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deceaseds/1 or /deceaseds/1.json
  def destroy
    @deceased.destroy

    respond_to do |format|
      format.html { redirect_to deceaseds_url, notice: "Deceased was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deceased
      @deceased = Deceased.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deceased_params
      params.require(:deceased).permit(:deceased_id, :user_id, :first_name, :last_name, :date_of_birth, :date_of_death)
    end
end
