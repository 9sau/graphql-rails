module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :author_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :author, AuthorType, null: false

    def author
      object.author
    end
  end
end
