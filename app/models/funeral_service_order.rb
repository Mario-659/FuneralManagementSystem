class FuneralServiceOrder < ApplicationRecord
  belongs_to :funeral
  belongs_to :funeral_service, foreign_key: 'service_id'

  validates :quantity, :funeral_id, :service_id, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 1 }

end
