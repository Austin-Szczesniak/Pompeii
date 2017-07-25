desc "Import photos into the feature sheets for prior years."
  require 'rmagick'

  task :import_photos => :environment do
    Dir.glob("#{Rails.root}/tmp/photos/*.{gif,jpg,jpeg,JPG,png,PNG}").each do |file|
    file = File.open(file)
    sheet = File.basename(file).gsub(/[^\d]/, '').to_i
  	if Feature.find_by_sheet(sheet).present?
  	  @photo = Photo.new
  	  @photo.picture = file
  	  @photo.feature_id = Feature.find_by_sheet(sheet).id
  	  @photo.save!
  	  File.delete(file)
  	end
  end
end