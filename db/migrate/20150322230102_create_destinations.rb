class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :description
      t.text :city
      t.text :state
      t.text :country

      t.timestamps null: false
    end
  end
end
