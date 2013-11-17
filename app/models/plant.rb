class Plant < ActiveRecord::Base
	belongs_to :family
	belongs_to :region

	def regionname
		region.name
	end

	def self.search(search)
	  if search
	    find(:all, :conditions => ['plants.name LIKE ? or plants.description LIKE ?', "%#{search}%", "%#{search}%"])
	  else
	    find(:all)
	  end
	end
end
