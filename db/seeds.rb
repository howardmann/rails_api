# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 
# MOVIE ..........................................
Movie.destroy_all
jaws = Movie.create(
  :title => 'Jaws',
  :year => 1970,
  :box_office => 100000000
)
alien = Movie.create(
  :title => 'Alien',
  :year => 1975,
  :box_office => 70000000
)
gladiator = Movie.create(
  :title => 'Gladiator',
  :year => 2000,
  :box_office => 1000000
)
jurassic = Movie.create(
  :title => 'Jurassic Park',
  :year => 1995,
  :box_office => 200000000
)

# Movie tests
p "MOVIES........"
p "Movie count: #{Movie.all.length}"
p "Movie titles: #{Movie.all.pluck(:title)}"

# DIRECTOR ..........................................
Director.destroy_all
steven = Director.create(
  :name => 'Steven Spielberg',
  :age => 70
)
ridley = Director.create(
  :name => 'Ridley Scott',
  :age => 65
)

# Movie tests
p "DIRECTOR........"
p "Director count: #{Director.all.length}"
p "Director titles: #{Director.all.pluck(:name)}"

# ASSOCIATIONS...................
steven.movies << alien << gladiator
ridley.movies << jaws << jurassic

# Association tests
p "ASSOCIATIONS........"
p "Stevens movies: #{steven.movies.pluck(:title)}"
p "Ridleys movies: #{ridley.movies.pluck(:title)}"

