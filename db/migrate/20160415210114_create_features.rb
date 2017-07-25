class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :sheet
      t.string :date
      t.string :recorder
      t.string :researcher
      t.string :season
      t.string :region
      t.string :insula
      t.string :entrance
      t.string :gate
      t.string :structure
      t.string :category
      t.string :usage
      t.string :sheet_type
      t.string :space_number
      t.string :space_type
      t.string :feature
      t.boolean :negative_feature
      t.boolean :minority_report
      t.text :description
      t.text :contiguous_relationship
      t.string :photographer
      t.string :bw_roll
      t.string :color_roll
      t.string :digital_image
      t.string :videographer
      t.string :file_number
      t.string :tape_number
      t.string :time_count
      t.string :video_comments
      t.string :drawing
      t.string :artist
      t.string :jashemski_photographer
      t.string :jashemski_bw_roll
      t.string :jashemski_color_roll
      t.string :jashemski_digital_image

      t.timestamps null: false
    end
  end
end
