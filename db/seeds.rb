# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts' Erstelle Seeds'

Product.destroy_all
Header.destroy_all
Country.destroy_all
Category.destroy_all
SuperCategory.destroy_all


wein = SuperCategory.create!(name: 'Wein')
spirtuosen = SuperCategory.create!(name: 'Spirtuosen')
bubbly = SuperCategory.create!(name: 'Bubbly')
kaffee = SuperCategory.create!(name: 'Kaffe')
barthel_spezial = SuperCategory.create!(name: 'Barthel Spezial')

weißwein = Category.create!(name: 'Weißwein', super_category: wein)
rotwein = Category.create!(name: 'Rotwein', super_category: wein)
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

header1 = Header.create!(name: 'Aweseome header')

Product.create!(name: 'BARTHEL Tempranillo ', description: 'Seleccion especial de Don Tomaso. Ein idealer Begleiter zu jedem Essen.13 vol.%. 6 Monate Barrica', year: 2015, volume: 0.75, price: 5.90, category: rotwein, header:header1)
Product.create!(name: 'PAGO DE SALAMANDER  Reserva ', description: 'Vino de Yema
Kirschrote Farbe. Feine Intensität der Aromen, dezente Holztöne durch 24 monatige Barriquelagerung.Anfängliche feine  Tanine, die nach entspanntem Dekantieren herrliche Aromen freisetzen: Nelke,Tabak,Kaffee. Gute Struktur. Nachhaltig.  100 % Tempranillo.14,5 vol.%', year: 2013, volume: 0.75, price: 15.90, category: rotwein, header: header1)
Product.create!(name: 'BARTHEL Tempranillo ', description: 'Seleccion especial de Don Tomaso. Ein idealer Begleiter zu jedem Essen.13 vol.%. 6 Monate Barrica', year: 2015, volume: 0.75, price: 5.90, category: rotwein)


puts' Seeds erstellt'
