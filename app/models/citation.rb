class Citation < ActiveRecord::Base

	def self.all_citations
		Citation.all.map { |i| i.citation }
	end

end
