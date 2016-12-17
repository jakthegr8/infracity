require "administrate/base_dashboard"

class TalukDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    district: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    latitude: Field::String,
    longitude: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :district,
    :id,
    :name,
    :latitude,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :district,
    :id,
    :name,
    :latitude,
    :longitude,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :district,
    :name,
    :latitude,
    :longitude,
  ].freeze

  # Overwrite this method to customize how taluks are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(taluk)
  #   "Taluk ##{taluk.id}"
  # end
end
