# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts' Erstelle Seeds'


LineItem.destroy_all
Product.destroy_all  if Rails.env.development?
Header.destroy_all   if Rails.env.development?
Country.destroy_all  if Rails.env.development?
Category.destroy_all if Rails.env.development?
SuperCategory.destroy_all if Rails.env.development?


wein = SuperCategory.create!(name: 'Weine')
spirtuosen = SuperCategory.create!(name: 'Spirtuosen')
bubbly = SuperCategory.create!(name: 'Bubbly')
kaffee = SuperCategory.create!(name: 'Kaffe')
barthel_spezial = SuperCategory.create!(name: 'Barthel Spezial')

weißwein = Category.create!(name: 'Weißwein', super_category: wein)
rotwein = Category.create!(name: 'Rotwein', super_category: wein)
rose = Category.create!(name: 'Rose', super_category: wein)
süßwein = Category.create!(name: 'Süßwein', super_category: wein)


wiskey = Category.create!(name: 'Wiskey', super_category: spirtuosen)
feinbrand = Category.create!(name: 'Feinbrand', super_category: spirtuosen)
cognac = Category.create!(name: 'Cognac', super_category: spirtuosen)
edelbrand = Category.create!(name: 'Edelbrand', super_category: spirtuosen)

Category.create!(name: 'Champagner', super_category: bubbly)
Category.create!(name: 'Sekt', super_category: bubbly)
Category.create!(name: 'Spumante', super_category: bubbly)
Category.create!(name: 'Prosecco', super_category: bubbly)

Category.create!(name: 'Barthel Premium Kaffee', super_category: kaffee)


frankreich = Country.create!(name: 'Frankreich')
italien = Country.create!(name: 'Italien')

header1 = Header.create!(name: 'Aweseome header')
header2 = Header.create!(name: 'Adalusia ')
header3 = Header.create!(name: 'Popeldiwutz')
header4 = Header.create!(name: '
Bayrischer Feinbrand vom Fritznhof / Chiemgau - Dirnsberg')

Product.create!(name: 'BARTHEL 1 ', description: 'Seleccion especial de Don Tomaso. Ein idealer Begleiter zu jedem Essen.13 vol.%. 6 Monate Barrica', year: 2015, volume: 0.75, price_cents: 5.90, category: rotwein, header:header1, country: italien)
Product.create!(name: 'BARTHEL 1 ', description: 'Seleccion especial de Don Tomaso. Ein idealer Begleiter zu jedem Essen.13 vol.%. 6 Monate Barrica', year: 2015, volume: 0.75, price_cents: 5.90, category: weißwein, header:header1, country: italien)
Product.create!(name: 'BARTHEL 1 ', description: 'Seleccion especial de Don Tomaso. Ein idealer Begleiter zu jedem Essen.13 vol.%. 6 Monate Barrica', year: 2015, volume: 0.75, price_cents: 5.90, category: weißwein, header:header1, country: italien)
Product.create!(name: 'BARTHEL 2 ', description: 'Seleccion especial de Don Tomaso. Ein idealer Begleiter zu jedem Essen.13 vol.%. 6 Monate Barrica', year: 2015, volume: 0.75, price_cents: 5.90, category: rotwein, header:header2, country: italien)
Product.create!(name: 'BARTHEL 3 ', description: 'Seleccion especial de Don Tomaso. Ein idealer Begleiter zu jedem Essen.13 vol.%. 6 Monate Barrica', year: 2015, volume: 0.75, price_cents: 5.90, category: rotwein, header:header3, country: italien)
Product.create!(name: 'PAGO DE SALAMANDER  Reserva ', description: 'Vino de Yema
Kirschrote Farbe. Feine Intensität der Aromen, dezente Holztöne durch 24 monatige Barriquelagerung.Anfängliche feine  Tanine, die nach entspanntem Dekantieren herrliche Aromen freisetzen: Nelke,Tabak,Kaffee. Gute Struktur. Nachhaltig.  100 % Tempranillo.14,5 vol.%', year: 2013, volume: 0.75, price_cents: 15.90, category: rotwein, header: header1, country: frankreich)
Product.create!(name: 'BARTHEL Tempranillo ', description: 'Seleccion especial de Don Tomaso. Ein idealer Begleiter zu jedem Essen.13 vol.%. 6 Monate Barrica', year: 2015, volume: 0.75, price_cents: 5.90, category: rotwein, header:header3, country: frankreich)



Product.create!(name: 'OBSTBRAND', description: 'Apfel und Birne vom Chiemsee , mild ', year: 2015, volume: 0.75, price_cents: 5.90, category: feinbrand, header: header4)
Product.create!(name: ' HIMBEERGEIST', description: 'Himbeerbrand vom Chiemsee, feines Aroma, milder Geschmack', year: 2015, volume: 0.75, price_cents: 5.90, category: feinbrand, header: header4)
Product.create!(name: "WILLIAM'S CHRIST", description: "aus William's Christ Äpfeln vom Chiemsee, typisches Aroma, milder Geschmack", year: 2015, volume: 0.75, price_cents: 5.90, category: feinbrand, header: header4)





puts' Seeds erstellt'
