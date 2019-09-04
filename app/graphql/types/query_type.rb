module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    
    def test_field
      "Hello World!"
    end

    field :books, [Types::BookType], null: false

    def books
      Book.all
    end

    field :author, Types::AuthorType, null: false do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find(id)
    end

  end
end
