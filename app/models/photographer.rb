class Photographer < ActiveRecord::Base

	scope :current_photographers, ->{ where(year: Time.now.year.to_s ) }

	def self.current_year_array
		current_photographers.map{|i| i.name }
	end

end
