require "administrate/base_dashboard"

class WardDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    zone: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    ward_number: Field::Number,
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
    :zone,
    :id,
    :name,
    :ward_number,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :zone,
    :id,
    :name,
    :ward_number,
    :latitude,
    :longitude,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :zone,
    :name,
    :ward_number,
    :latitude,
    :longitude,
  ].freeze

  # Overwrite this method to customize how wards are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(ward)
  #   "Ward ##{ward.id}"
  # end
end
