module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [Types::UserType], null: false
    field :micro_site, Types::MicroSiteType, null: false do
      argument :subdomain, String, required: true
    end

    def users
      User.all
    end

    def micro_site(subdomain:)
      MicroSite.find_by(subdomain: subdomain)
    end
  end
end
