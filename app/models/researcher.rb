class Researcher < ActiveRecord::Base

	scope :current_researchers, ->{ where(year: Time.now.year.to_s ) }

	def self.current_year_array
		current_researchers.map{|i| i.name }
	end


end
