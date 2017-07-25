class Feature < ActiveRecord::Base
	extend FriendlyId
	has_many :bibliographies
	has_many :photos
	has_many :floorplans
	has_many :sketches

	validates :sheet, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }

	validates :sheet, uniqueness: true
  accepts_nested_attributes_for :photos, :allow_destroy => true
  accepts_nested_attributes_for :floorplans, :allow_destroy => true
  accepts_nested_attributes_for :sketches, :allow_destroy => true
  accepts_nested_attributes_for :bibliographies, :allow_destroy => true

  friendly_id :sheet, use: :slugged

	def locked?
		self.locked
	end

end
