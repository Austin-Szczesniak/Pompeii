class Videographer < ActiveRecord::Base

	scope :current_videographers, ->{ where(year: Time.now.year.to_s ) }

	def self.current_year_array
		current_videographers.map{|i| i.name }
	end

end
