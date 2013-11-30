class Indication < ActiveRecord::Base
	has_and_belongs_to_many :method_of_use
end
