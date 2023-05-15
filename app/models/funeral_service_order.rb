class FuneralServiceOrder < ApplicationRecord
  belongs_to :funeral
  belongs_to :service
end
