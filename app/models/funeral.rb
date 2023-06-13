class Funeral < ApplicationRecord
  belongs_to :deceased
  enum burial_type: { traditional: 0, cremation: 1, green_burial: 2 }
end
