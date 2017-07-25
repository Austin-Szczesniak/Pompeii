class DataBuilder
	require 'csv'
	def initialize
		@current_feature = nil
	end

	def self.load_csv
		CSV.foreach(Rails.root+"lib/finalfinal.csv", encoding: "ISO8859-1", :headers => false) do |row|
			process_row(row)
		end
		clean_up_rows
	end

	def self.process_row(row)
		row_count = row.to_a.compact.count
		return if row_count == 0
		add_feature(row, row_count)
	end

	def self.add_feature(row, row_count)
		if row_count <=2 && row[7].present?
			add_biography(row)
		else
			build_feature(row)
		end
	end

	def self.add_biography(row)
		@current_feature.bibliographies.create(
			cited_work: row[7],
			volume: row[4],
			page: row[5],
			comment: row[6])
	end

	def self.get_season(data)
		unless data.nil?
			data.split(//).last(4).join
		else
			data
		end
	end

	def self.build_feature(row)
		@current_feature = Feature.create(
			sheet: 					row[66],
			date: 					row[58],
			recorder: 			Recorder.where(name: row[78], year: row[79]).first_or_create.name,
	    researcher: 		Researcher.where(name: row[76], year: row[77]).first_or_create.name,
	    season:  				get_season(row[58]),
	    region: 				row[60],
	    insula: 				row[41],
	    entrance: 			row[30],
	    gate: 					row[37],
	    structure: 			Structure.where(name: row[69]).first_or_create.name,
	    category: 			Category.where(name: row[12]).first_or_create.name,
	    usage: 					Usage.where(usage: row[46]).first_or_create.usage,
	    sheet_type: 		row[67],
	    space_number: 	row[61],
	    space_type: 		SpaceType.where(space: row[63]).first_or_create.space,
	    feature: 				FeatureType.where(feature: row[34]).first_or_create.feature,
	    negative_feature: row[49],
	    minority_report: 	row[47],
	    description: 			row[20],
	    contiguous_relationship: "#{row[13]} #{row[14]} #{row[15]}",
	    photographer: 		Photographer.where(name: row[3], year: row[2]).first_or_create.name,
	    bw_roll: 					row[50],
	    color_roll:       row[51],
	    digital_image: 		row[53],
	    videographer: 		Videographer.where(name: row[10], year: row[9]).first_or_create.name,
	    file_number: 			row[74],
	    tape_number: 			row[71],
	    time_count: 			row[72],
	    video_comments: 	row[73],
	    artist: 					Artist.where(name: row[1], year: row[0]).first_or_create.name
			)
		@current_feature.bibliographies.create(
			cited_work: row[7],
			volume: row[4],
			page: row[5],
			comment: row[6]) unless row[7].nil?
	end

	def self.clean_up_rows
		Feature.all.each do |f|
			f.destroy if f.sheet.blank?
		end
	end

end
