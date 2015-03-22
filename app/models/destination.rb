class Destination < ActiveRecord::Base
	attr_accessible :description, :name, :city, :state, :country

	belongs_to :trip
end
