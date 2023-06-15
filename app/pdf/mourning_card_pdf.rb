require 'prawn'

class MourningCardPdf < Prawn::Document
  def initialize(mourning_card)
    super()
    @mourning_card = mourning_card
    @funeral = mourning_card.funeral
    generate_pdf
  end
  
  def generate_pdf
    text "Mourning Card", size: 30, style: :bold
    move_down 20

    text "Description:", style: :bold
    text @mourning_card.description
    move_down 20

    text "Funeral Information:", style: :bold
    text "Deceased: #{@funeral.deceased.first_name} #{@funeral.deceased.last_name}"
    text "Burial Place: #{@funeral.burial_place}"
    text "Funeral Date: #{@funeral.funeral_date.strftime('%B %d, %Y')}"
    
  end
end
