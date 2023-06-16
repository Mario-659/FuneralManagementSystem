class FuneralServiceOrder < ApplicationRecord
  belongs_to :funeral
  belongs_to :funeral_service, foreign_key: 'service_id'
end
