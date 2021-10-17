class Types::MicroSiteType < Types::BaseObject
  field :id, ID, null: false
  field :url, String, null: false
  field :title, String, null: false
  field :description, String, null: false
  field :header_image_url, String, null: false
  field :user, Types::UserType, null: false
end
