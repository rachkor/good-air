class Destination < ActiveRecord::Base
	attr_accessible :name, :description, :city, :state, :country, :visited

	belongs_to :trip
	has_many :activities
	validates_presence_of :name 
end
