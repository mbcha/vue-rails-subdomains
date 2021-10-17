class Types::UserType < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
  field :micro_site, Types::MicroSiteType, null: false
end
