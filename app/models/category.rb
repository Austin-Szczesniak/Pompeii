class Category < ActiveRecord::Base

	def self.all_categories
		Category.all.map { |i| i.name}
	end

end
