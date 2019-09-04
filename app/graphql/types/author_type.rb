module Types
  class AuthorType < Types::BaseObject
	field :id, ID, null: false
	field :email, String, null: false
  	field :name, String, null: false 	
  	field :books, [Types::BookType], null: true
    field :number_of_books, Integer, null: true

    def number_of_books
		object.books.size
    end
  end
end
