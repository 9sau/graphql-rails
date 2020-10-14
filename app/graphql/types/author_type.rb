module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :books, [BookType], null: false

    def books
      object.books
    end
  end
end
