require "administrate/base_dashboard"

class FeatureDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sheet: Field::String,
    date: Field::String,
    recorder: Field::String,
    researcher: Field::String,
    season: Field::String,
    region: Field::String,
    insula: Field::String,
    entrance: Field::String,
    gate: Field::String,
    structure: Field::String,
    category: Field::String,
    usage: Field::String,
    sheet_type: Field::String,
    space_number: Field::String,
    space_type: Field::String,
    feature: Field::String,
    negative_feature: Field::Boolean,
    minority_report: Field::Boolean,
    description: Field::Text,
    contiguous_relationship: Field::Text,
    photographer: Field::String,
    bw_roll: Field::String,
    color_roll: Field::String,
    digital_image: Field::String,
    videographer: Field::String,
    file_number: Field::String,
    tape_number: Field::String,
    time_count: Field::String,
    video_comments: Field::String,
    drawing: Field::String,
    artist: Field::String,
    jashemski_photographer: Field::String,
    jashemski_bw_roll: Field::String,
    jashemski_color_roll: Field::String,
    jashemski_digital_image: Field::String,
    locked: Field::Boolean,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :sheet,
    :date,
    :recorder,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :sheet,
    :date,
    :recorder,
    :researcher,
    :season,
    :region,
    :insula,
    :entrance,
    :gate,
    :structure,
    :category,
    :usage,
    :sheet_type,
    :space_number,
    :space_type,
    :feature,
    :negative_feature,
    :minority_report,
    :description,
    :contiguous_relationship,
    :photographer,
    :bw_roll,
    :color_roll,
    :digital_image,
    :videographer,
    :file_number,
    :tape_number,
    :time_count,
    :video_comments,
    :drawing,
    :artist,
    :jashemski_photographer,
    :jashemski_bw_roll,
    :jashemski_color_roll,
    :jashemski_digital_image,
    :created_at,
    :updated_at,
    :locked,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :sheet,
    :date,
    :recorder,
    :researcher,
    :season,
    :region,
    :insula,
    :entrance,
    :gate,
    :structure,
    :category,
    :usage,
    :sheet_type,
    :space_number,
    :space_type,
    :feature,
    :negative_feature,
    :minority_report,
    :description,
    :contiguous_relationship,
    :photographer,
    :bw_roll,
    :color_roll,
    :digital_image,
    :videographer,
    :file_number,
    :tape_number,
    :time_count,
    :video_comments,
    :drawing,
    :artist,
    :jashemski_photographer,
    :jashemski_bw_roll,
    :jashemski_color_roll,
    :jashemski_digital_image,
    :locked,
  ]

  # Overwrite this method to customize how features are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(feature)
  #   "Feature ##{feature.id}"
  # end
end
