class Sketch < ActiveRecord::Base
	belongs_to :feature
	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png" 
	validates_attachment :picture, presence: true 
	do_not_validate_attachment_file_type :picture
end