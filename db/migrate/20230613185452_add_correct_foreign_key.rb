class AddCorrectForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :funeral_service_orders, :funeral_services, column: :service_id
  end
end
