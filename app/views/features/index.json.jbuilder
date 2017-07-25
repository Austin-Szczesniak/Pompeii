json.array!(@features) do |feature|
  json.extract! feature, :id, :sheet, :date, :recorder, :researcher, :season, :region, :insula, :entrance, :gate, :structure, :category, :usage, :sheet_type, :space_number, :space_type, :feature, :negative_feature, :minority_report, :description, :contiguous_relationship, :photographer, :bw_roll, :color_roll, :digital_image, :videographer, :file_number, :tape_number, :time_count, :video_comments, :drawing, :artist, :jashemski_photographer, :jashemski_bw_roll, :jashemski_color_roll, :jashemski_digital_image
  json.url feature_url(feature, format: :json)
end
