class CreateMourningCards < ActiveRecord::Migration[7.0]
  def change
    create_table :mourning_cards do |t|
      t.integer :card_id
      t.references :funeral, null: false, foreign_key: true

      t.timestamps
    end
  end
end
