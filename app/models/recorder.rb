class Recorder < ActiveRecord::Base

	scope :current_recorders, ->{ where(year: Time.now.year.to_s ) }

	def self.current_year_array
		current_recorders.map{|i| i.name }
	end

end
