class Destination < ActiveRecord::Base
	attr_accessor :name, :description, :city, :state, :country

	belongs_to :trip
end
