class RemoveCustomIds < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :user_id, :integer
    remove_column :deceaseds, :deceased_id, :integer
    remove_column :funeral_service_orders, :order_id, :integer
    remove_column :funeral_services, :service_id, :integer
    remove_column :funerals, :funeral_id, :integer
    remove_column :mourning_cards, :card_id, :integer
  end
end
