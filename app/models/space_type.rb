class SpaceType < ActiveRecord::Base

	def self.all_space_types
		SpaceType.all.map { |i| i.space }
	end


end
