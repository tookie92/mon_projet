require "administrate/base_dashboard"

class ArticleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    comments: Field::HasMany,
    id: Field::Number,
    titre: Field::String,
    contenu: Field::Text,
    auteur: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    tag: Field::String,
    string: Field::String,
    image_uid: Field::String,
    image_name: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :comments,
    :id,
    :titre,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :comments,
    :id,
    :titre,
    :contenu,
    :auteur,
    :created_at,
    :updated_at,
    :tag,
    :string,
    :image_uid,
    :image_name,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :comments,
    :titre,
    :contenu,
    :auteur,
    :tag,
    :string,
    :image_uid,
    :image_name,
  ].freeze

  # Overwrite this method to customize how articles are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(article)
  #   "Article ##{article.id}"
  # end
end
