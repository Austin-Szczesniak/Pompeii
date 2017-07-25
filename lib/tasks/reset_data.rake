desc "Update development db to most current version."
task :reset_data => :environment do

	Rake::Task['db:reset'].invoke
	DataBuilder.load_csv
	Rake::Task['db:seed'].invoke

end
