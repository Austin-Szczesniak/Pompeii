class Structure < ActiveRecord::Base

	def self.all_structures
		Structure.all.map { |i| i.name }.select { |x| !x.nil? }.sort_by { |name| name }
	end

end
