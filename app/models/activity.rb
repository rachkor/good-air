class Activity < ActiveRecord::Base
	attr_accessible :description, :name, :location, :cost, :date

	belongs_to :destination
end
