class CreateDeceaseds < ActiveRecord::Migration[7.0]
  def change
    create_table :deceaseds do |t|
      t.integer :deceased_id
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.date :date_of_death

      t.timestamps
    end
  end
end
