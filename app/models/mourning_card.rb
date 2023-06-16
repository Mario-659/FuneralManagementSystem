class MourningCard < ApplicationRecord
  belongs_to :funeral

  validates :description, presence: true
  validates :description, length: { minimum: 2, maximum: 500 }

end
