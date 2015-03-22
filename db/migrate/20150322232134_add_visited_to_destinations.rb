class AddVisitedToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :visited, :boolean
  end
end
