class RemoveIncorrectForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :funeral_service_orders, :services
  end
end
