namespace :faker do
  task author:  :environment do
    fakers = []
    5.times do
      fakers << {
        name: Faker::Name.name,
        email: Faker::Internet.email
      }
    end
    Author.create(fakers)
    puts 'faker success inserted'

  end

  task book:  :environment do
    fakers = []
  	10.times do |index|
    		fakers << {
          author: Author.find(rand(1..5)),
          title: Faker::Book.title,
          publisher: Faker::Book.publisher, 
          genre: Faker::Book.genre 
    		}
	  end
    Book.create(fakers)
    puts 'faker success inserted'
  end

  	
end
