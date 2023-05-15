class CreateFunerals < ActiveRecord::Migration[7.0]
  def change
    create_table :funerals do |t|
      t.integer :funeral_id
      t.references :deceased, null: false, foreign_key: true
      t.string :burial_place
      t.string :burial_type
      t.string :reception_location
      t.date :funeral_date

      t.timestamps
    end
  end
end
