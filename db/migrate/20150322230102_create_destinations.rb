class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :state
      t.string :country
      t.boolean :visited

      t.timestamps null: false
    end
  end
end
