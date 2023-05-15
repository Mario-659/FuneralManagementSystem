class CreateFuneralServiceOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :funeral_service_orders do |t|
      t.integer :order_id
      t.references :funeral, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
