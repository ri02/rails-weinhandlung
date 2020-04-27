# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts' Erstelle Seeds'
SuperCategory.destroy_all


wein = SuperCategory.create!(name: 'Wein')
spirtuosen = SuperCategory.create!(name: 'Spirtuosen')
bubbly = SuperCategory.create!(name: 'Bubbly')
kaffee = SuperCategory.create!(name: 'Kaffe')
barthel_spezial = SuperCategory.create!(name: 'Barthel Spezial')

Category.create!(name: 'Weißwein', super_category: wein)
Category.create!(name: 'Rotwein', super_category: wein)
Category.create!(name: 'Rose', super_category: wein)
Category.create!(name: 'Süßwein', super_category: wein)


Category.create!(name: 'Wiskey', super_category: spirtuosen)
Category.create!(name: 'Feinbrand', super_category: spirtuosen)
Category.create!(name: 'Conac', super_category: spirtuosen)
Category.create!(name: 'Edelbrand', super_category: spirtuosen)

Category.create!(name: 'Champagner', super_category: bubbly)
Category.create!(name: 'Sekt', super_category: bubbly)
Category.create!(name: 'Spumante', super_category: bubbly)
Category.create!(name: 'Prosecco', super_category: bubbly)

Category.create!(name: 'Barthel Premium Kaffee', super_category: kaffee)


Country.create!(name: 'Frankreich')

Header.create!(name: 'Aweseome header')

puts' Seeds erstellt'
