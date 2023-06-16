class FuneralService < ApplicationRecord

    validates :name, :description, :price, presence: true
    validates :name, length: { minimum: 2, maximum: 50 }
    validates :description, length: { minimum: 2, maximum: 500 }
    validates :price, numericality: { greater_than_or_equal_to: 0.01, less_than_or_equal_to: 9999.99 }

end
