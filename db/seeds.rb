# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
groups = [
  'Parrish Art Museum',
  'Southampton Cultural Center',
  'Southampton Art Center',
  'Watermill Center',
  'Guild Hall',
  'Longhouse Reserve',
  'East End Arts Council',
  'Bay Street Theatre',
  'The Art Barge',
  'Madoo',
  'Foodlab',
  'Stony Brook University Southampton Arts',
  'OLA East End',
  'LITMA Southampton',
  'Southampton African American Museum',
  'Sag Harbor Cinema',
  'WPPB'
]

catgories = [
  'Art Exhibit',
  'Astronomy',
  'Benefit Event',
  'Book Signing',
  'Children’s Program',
  'Culinary',
  'Ecology',
  'Film',
  'Lecture',
  'Literary',
  'Music',
  'Nature',
  'Performance',
  'Theatre',
  'Walking Tours and Trails'
]

groups.each do |group|
  Group.create(name: group)
end

catgories.each do |cat|
  Category.create(name: cat)
end
