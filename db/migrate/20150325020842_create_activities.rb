class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :location
      t.decimal :cost
      t.date :date

      t.timestamps null: false
    end
  end
end
