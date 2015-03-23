class Destination < ActiveRecord::Base
	attr_accessible :name, :description, :city, :state, :country, :visited

	belongs_to :trip
	validates_presence_of :name 
end
