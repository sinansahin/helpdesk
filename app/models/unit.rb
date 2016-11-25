class Unit < ActiveRecord::Base
	belongs_to :organization
	has_many :tickets
end
