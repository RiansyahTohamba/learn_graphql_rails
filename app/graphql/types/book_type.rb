module Types
  class BookType < Types::BaseObject
	field :id, ID, null: false
  	field :title, String, null: false
  	field :genre, String, null: false
  	field :publisher, String, null: false
  end
end
