class AddDescriptionToMourningCards < ActiveRecord::Migration[7.0]
  def change
    add_column :mourning_cards, :description, :text
  end
end
