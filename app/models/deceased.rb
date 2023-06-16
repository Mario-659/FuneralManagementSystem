class Deceased < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, :date_of_birth, :date_of_death, presence: true
  validates :first_name, :last_name, length: { minimum: 2, maximum: 50 }
  validates :date_of_birth, :date_of_death, comparison: { less_than: proc { Date.today } }
  # TODO validation below not working because of undefined error, probably needs custom validator
  # validates :date_of_birth, comparison: { less_than: proc { date_of_death } }

  def display_name
    "#{first_name} #{last_name} (Date of Birth: #{date_of_birth})"
  end
end
