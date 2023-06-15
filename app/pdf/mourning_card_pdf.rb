require 'prawn'

class MourningCardPdf < Prawn::Document
  def initialize(mourning_card)
    super(page_size: 'A4', margin: [50, 75])
    @mourning_card = mourning_card
    @funeral = mourning_card.funeral

    font_families.update("Vivaldi" => {
      normal: Rails.root.join('app/assets/fonts/vivaldi.ttf')
    })

    generate_pdf
  end

  def generate_pdf
    # Header
    move_down 20
    text "Mourning Card", size: 26, style: :bold, align: :center
    move_down 20

    move_down 30
    font "Vivaldi" do
      text "In Loving Memory", size: 22, align: :center
    end
    move_down 20

    text "#{@funeral.deceased.first_name} #{@funeral.deceased.last_name}", size: 20, style: :italic, align: :center
    move_down 20

    font "Vivaldi" do
      text @mourning_card.description, size: 14, align: :center
    end

    move_down 200

    text "Funeral Information", size: 18, style: :bold, align: :center
    move_down 30

    text "Burial Place: #{@funeral.burial_place}", size: 14, align: :center
    text "Funeral Date: #{@funeral.funeral_date.strftime('%B %d, %Y')}", size: 14, align: :center

  end
end
