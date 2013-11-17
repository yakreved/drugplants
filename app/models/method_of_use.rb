class MethodOfUse < ActiveRecord::Base
	belongs_to	:plant
	belongs_to	:path_of_plant
	has_and_belongs_to_many :disease
end
