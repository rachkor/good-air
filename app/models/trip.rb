class Trip < ActiveRecord::Base
	attr_accessor :description, :name, :date

	has_many :destinations
end
