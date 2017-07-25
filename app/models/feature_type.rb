class FeatureType < ActiveRecord::Base

	def self.all_feature_types
		FeatureType.all.map{|i|i.feature}
	end
	
end
