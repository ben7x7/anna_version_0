Agency.destroy_all
Service.destroy_all

agency1 = Agency.create!(brand: 'La Panosse', created_date: '2000', owner: 'M. Brosse', director: 'M. Bubble', address: '7 Rue Meyerbeer 75009 Paris', phone: '0123455678', contact_person: 'M. Bubble', mobile: '0611223344', email: 'm.bubble@gmail.com', description: 'opening hours...' )
agency2 = Agency.create!(brand:'Chef at home', created_date: '2010', owner: 'M. Gourmand', director: 'M. Gourmand', address: '14 Bvd Haussmann 75009 Paris', phone: '0142424343', contact_person: 'Loic Gourmand', mobile: '0790082654', email: 'loic.gourmand@chefathome.fr', description: 'Have your own chef working in your kitchen' )

service1 = Service.create!(activity: 'Cleaning', hourly_fee: '20', description: 'sweaping, vacuming, cleaning all romms', agency: agency1 )
service2 = Service.create!(activity: 'Ironing', hourly_fee: '22', description: 'whatever can be ironed', agency: agency1 )
service3 = Service.create!(activity: 'Cooking', hourly_fee: '35', description: 'A Chef is cooking in your own kitchen', agency: agency2 )


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
