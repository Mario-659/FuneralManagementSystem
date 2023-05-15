class MourningCardsController < ApplicationController
  before_action :set_mourning_card, only: %i[ show edit update destroy ]

  # GET /mourning_cards or /mourning_cards.json
  def index
    @mourning_cards = MourningCard.all
  end

  # GET /mourning_cards/1 or /mourning_cards/1.json
  def show
  end

  # GET /mourning_cards/new
  def new
    @mourning_card = MourningCard.new
  end

  # GET /mourning_cards/1/edit
  def edit
  end

  # POST /mourning_cards or /mourning_cards.json
  def create
    @mourning_card = MourningCard.new(mourning_card_params)

    respond_to do |format|
      if @mourning_card.save
        format.html { redirect_to mourning_card_url(@mourning_card), notice: "Mourning card was successfully created." }
        format.json { render :show, status: :created, location: @mourning_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mourning_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mourning_cards/1 or /mourning_cards/1.json
  def update
    respond_to do |format|
      if @mourning_card.update(mourning_card_params)
        format.html { redirect_to mourning_card_url(@mourning_card), notice: "Mourning card was successfully updated." }
        format.json { render :show, status: :ok, location: @mourning_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mourning_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mourning_cards/1 or /mourning_cards/1.json
  def destroy
    @mourning_card.destroy

    respond_to do |format|
      format.html { redirect_to mourning_cards_url, notice: "Mourning card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mourning_card
      @mourning_card = MourningCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mourning_card_params
      params.require(:mourning_card).permit(:card_id, :funeral_id)
    end
end
