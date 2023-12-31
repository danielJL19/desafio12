# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
20.times do |i|
Movie.create(name: Faker::Movie.title,
               synopsis: 'Comentario #{i}',
               director: Faker::Name.first_name
)

end
20.times do |i|
Serie.create(name: Faker::Movie.title,
            synopsis: 'Comentario #{i}',
            director: Faker::Name.first_name
)
  
end
20.times do |i|
DocumentaryFilm.create(name: Faker::Movie.title,
            synopsis: 'Comentario #{i}',
            director: Faker::Name.first_name
)
  
end