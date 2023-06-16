class Deceased < ApplicationRecord
  belongs_to :user

  def display_name
    "#{first_name} #{last_name} (Date of Birth: #{date_of_birth})"
  end
end
