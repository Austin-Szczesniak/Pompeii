class Usage < ActiveRecord::Base

	def self.all_usages
		Usage.all.map { |i| i.usage }
	end

end
