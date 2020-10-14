module Types
  class QueryType < Types::BaseObject
    field :book, Types::BookType, null: true, description: "Returns a single book" do
      argument :id, ID, required: true
    end

    def book(id:)
      Book.find_by_id(id)
    end

    field :books, [Types::BookType], null: false, description: "Returns all books"
    
    def books
      Book.includes(:author).all
    end
    
    field :author, Types::AuthorType, null: true, description: "Returns an author" do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find_by_id(id)
    end

    field :authors, [Types::AuthorType], null: false, description: "Returns all authors"

    def authors
      Author.includes(:books).all
    end
  end
end
