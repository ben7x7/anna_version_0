Agency.destroy_all


agency1 = Agency.create!(brand: 'La Panosse', created_date: '2000', owner: 'M. Brosse', director: 'M. Bubble', address: '7 Rue Meyerbeer 75009 Paris', phone: '0123455678', contact_person: 'M. Bubble', mobile: '0611223344', email: 'm.bubble@gmail.com', description: 'opening hours...' )




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
