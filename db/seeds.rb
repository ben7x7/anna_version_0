Booking.destroy_all
Service.destroy_all
Agency.destroy_all
User.destroy_all



agency1 = Agency.create!(
  brand: 'La Panosse Sarl',
  created_date: '2000',
  owner: 'M. Brosse',
  director: 'M. Bubble',
  address: '14 Bvd Haussmann 75009 Paris',
  phone: '0123455678',
  contact_person: 'M. Bubble',
  mobile: '0611223344',
  email: 'm.bubble@gmail.com',
  description: 'More than 15 years of experience in the cleaning services. Ironing service is also available'
)

agency2 = Agency.create!(
  brand:'Golden Keys Services',
  created_date: '2010',
  owner: 'M. Laporte',
  director: 'M. Lafouille',
  address: '14 Bvd Haussmann 75009 Paris',
  phone: '0142424343',
  contact_person: 'Loic Trouvetoux',
  mobile: '0790082654',
  email: 'loic.trouvetoux@golden-keys-services.com',
  description: 'We provide any services you might need. Try it !'
)

agency3 = Agency.create!(
  brand: 'Anna Call Center',
  created_date: '2018',
  owner: 'M. Anna',
  director: 'M. Anna',
  address: '14 Bvd Haussmann 75009 Paris',
  phone: '0144332211',
  contact_person: 'Paul Anna',
  mobile: '0788990011',
  email: 'anna@anna.com',
  description: 'Call center is available from 8:00 to 18:00 from Monday to Friday to answer to your question and assist you to book a new service. '
)

service1 = Service.create!(
  activity: 'Housekeeping',
  hourly_fee: '20',
  description: 'This service includs the following tasks : sweaping, vacuming, cleaning in all the requested rooms',
  agency: agency1,
  picto: File.open("#{Rails.root.to_s}/app/assets/images/housekeeping.png")
)

service2 = Service.create!(
  activity: 'Ironing',
  hourly_fee: '22',
  description: 'whatever can be ironed',
  agency: agency1,
  picto: File.open("#{Rails.root.to_s}/app/assets/images/ironing.png")
)

service3 = Service.create!(
  activity: 'Call Center',
  hourly_fee: '',
  description: 'Contact us for more information',
  agency: agency3,
  picto: File.open("#{Rails.root.to_s}/app/assets/images/call center.png")
)

service4 = Service.create!(
  activity: 'Conciergerie',
  hourly_fee: '',
  description: 'Ticket corner for concert, operas, painting exposition...',
  agency: agency2,
  picto: File.open("#{Rails.root.to_s}/app/assets/images/conciergerie.png")
)


user = User.create!(
  email: 'james@007.com',
  password: 'password',
  user_type: 'client',
  first_name: 'James',
  last_name: 'Bond',
  phone: '0144444444',
  mobile: '0700700700',
  st_number: '40',
  street: 'av Foch',
  zip: '75016',
  city: 'Paris',
  building: '',
  code: 'interphone',
  floor: '4',
  lift: true,
  door: 'facing the stairs',
  comment: 'Check out the cat when opening windows',
  capacity: 'Full',
  photo_url: 'http://res.cloudinary.com/bessiere/image/upload/v1515865507/james_ruvrbe.jpg'
)

Booking.create!(
  status: 'reserved',
  date: '15/03/2018',
  starting_time: '08:00',
  ending_time: '10:00',
  user: user,
  service: service1,
  price: '45',
)

booking_2 = Booking.new(
  status: 'reserved',
  date: '22/03/2018',
  starting_time: '08:00',
  ending_time: '10:00',
  user: user,
  service: service1,
  price: '45',
)

booking_2.save!


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
