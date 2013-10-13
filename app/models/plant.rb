class Plant < ActiveRecord::Base
	belongs_to :family
	belongs_to :region
end
