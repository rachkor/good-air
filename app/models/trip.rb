class Trip < ActiveRecord::Base
	attr_accessible :description, :name, :date

	belongs_to :user
	has_many :destinations

	validates_presence_of :name
end
