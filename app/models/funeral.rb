class Funeral < ApplicationRecord
  belongs_to :deceased
  enum burial_type: { traditional: 0, cremation: 1, green_burial: 2 }

  validates :funeral_date, :funeral_time, :burial_type, :deceased_id, :burial_place, :reception_location, presence: true
  validates :burial_place, :reception_location, length: { minimum: 2, maximum: 50 }
  validates :burial_type, inclusion: { in: burial_types.keys }

  def display_name
    "#{deceased.first_name} #{deceased.last_name} (Funeral Date: #{funeral_date})"
  end
end
