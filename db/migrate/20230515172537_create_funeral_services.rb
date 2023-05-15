class CreateFuneralServices < ActiveRecord::Migration[7.0]
  def change
    create_table :funeral_services do |t|
      t.integer :service_id
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
