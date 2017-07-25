class Gate < ActiveRecord::Base

	def self.all_gates
		Gate.all.map { |i| i.name }
	end

end
