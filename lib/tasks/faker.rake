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
  	5.times do |index|
    		fakers << {
          user: Author.find(index+1),
          title: Faker::Book.title,
          publisher: Faker::Book.publisher, 
          genre: Faker::Book.genre 
    		}
	  end
    Book.create(fakers)
    puts 'faker success inserted'

  end

  	
end
