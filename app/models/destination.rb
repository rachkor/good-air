class Destination < ActiveRecord::Base
	attr_accessor :name, :description, :city, :state, :country, :visited

	belongs_to :trip
end
