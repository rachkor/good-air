class Trip < ActiveRecord::Base
	attr_accessible :description, :name, :date

	has_many :destinations

	validates_presence_of :name
end
