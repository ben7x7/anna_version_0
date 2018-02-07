Booking.destroy_all
Employee.destroy_all
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
  owner: 'Mr. Hanna',
  director: 'Mrs Hanna',
  address: '14 Bvd Haussmann 75009 Paris',
  phone: '0144332211',
  contact_person: 'Anna Hanna',
  mobile: '0788990011',
  email: 'anna@anna.fr',
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
  hourly_fee: '100',
  description: 'Any Services on demand...',
  agency: agency2,
  picto: File.open("#{Rails.root.to_s}/app/assets/images/conciergerie.png")
)


user1 = User.create!(
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

user2 = User.create!(
  email: 'omer@dalors.com',
  password: 'password',
  user_type: 'client',
  first_name: 'Omer',
  last_name: 'Dalors',
  phone: '0188575554',
  mobile: '0609881726',
  st_number: '55',
  street: 'Avenue du Chateau',
  zip: '94100',
  city: 'Vincennes',
  building: 'Résidence du Parc',
  code: '3472A',
  floor: '6',
  lift: true,
  door: 'blue door',
  comment: 'Please be very carefull with the dishes !',
  capacity: 'Full',
  photo_url: 'http://res.cloudinary.com/bessiere/image/upload/v1504284222/omer.jpg'
)

user3 = User.create!(
  email: 'pierre@lapanosse.fr',
  password: 'password',
  user_type: 'manager',
  first_name: 'Pierre',
  last_name: 'Kimousse',
  phone: '0138273646',
  mobile: '0611223344',
  st_number: '28',
  street: 'Rue de la Solidarité',
  zip: '75019',
  city: 'Paris',
  building: '',
  code: '',
  floor: '',
  lift: true,
  door: '',
  comment: '',
  capacity: 'Full',
  photo_url: 'http://res.cloudinary.com/bessiere/image/upload/v1513867474/al4ulrsd1vweknj4omjq.jpg'
)

user4 = User.create!(
  email: 'aude@lapanosse.fr',
  password: 'password',
  user_type: 'employee',
  first_name: 'Aude',
  last_name: 'Javel',
  phone: '0154015400',
  mobile: '0619283746',
  st_number: '3',
  street: 'Rue Chapon',
  zip: '93300',
  city: 'Aubervilliers',
  building: '',
  code: '',
  floor: '',
  lift: true,
  door: '',
  comment: '',
  capacity: 'Full',
  photo_url: 'http://res.cloudinary.com/bessiere/image/upload/v1515865523/mariadasilva.png'
)

user5 = User.create!(
  email: 'eva@lapanosse.fr',
  password: 'password',
  user_type: 'employee',
  first_name: 'Eva',
  last_name: 'Luation',
  phone: '0155578854',
  mobile: '0727387496',
  st_number: '58',
  street: 'Rue du Midi',
  zip: '93100',
  city: 'Montreuil',
  building: '',
  code: '',
  floor: '',
  lift: true,
  door: '',
  comment: '',
  capacity: 'Full',
  photo_url: 'http://res.cloudinary.com/bessiere/image/upload/v1503060190/silvia_u1cokf.jpg'
)

user6 = User.create!(
  email: 'jessica@lapanosse.fr',
  password: 'password',
  user_type: 'employee',
  first_name: 'Jessica',
  last_name: 'Lité',
  phone: '0194939291',
  mobile: '0619283746',
  st_number: '14',
  street: 'Rue Descartes',
  zip: '93170',
  city: 'Bagnolet',
  building: '',
  code: '',
  floor: '',
  lift: true,
  door: '',
  comment: '',
  capacity: 'Full',
  photo_url: 'http://res.cloudinary.com/bessiere/image/upload/v1503060190/laure_eklesg.jpg'
)

user7 = User.create!(
  email: 'claire@lapanosse.fr',
  password: 'password',
  user_type: 'employee',
  first_name: 'Claire',
  last_name: 'Gebois',
  phone: '0154555788',
  mobile: '0667686768',
  st_number: '3',
  street: 'Rue Lamartine',
  zip: '93130',
  city: 'Noisy-le-Sec',
  building: '',
  code: '',
  floor: '',
  lift: true,
  door: '',
  comment: '',
  capacity: 'Full',
  photo_url: 'http://res.cloudinary.com/bessiere/image/upload/v1503060189/claire_chue5f.jpg'
)

user8 = User.create!(
  email: 'patricia@golden-keys-services.fr',
  password: 'password',
  user_type: 'manager',
  first_name: 'Patricia',
  last_name: 'Tatave',
  phone: '0144839400',
  mobile: '0642690139',
  st_number: '97',
  street: 'Rue Caulaincour',
  zip: '75018',
  city: 'Paris',
  building: '',
  code: 'interphone',
  floor: '3',
  lift: true,
  door: 'where there is welcome carpet',
  comment: 'Pick up keys at the concierge desk',
  capacity: 'Full',
  photo_url: 'http://res.cloudinary.com/bessiere/image/upload/v1502989409/patricia.jpg'
)

user9 = User.create!(
  email: 'Sarah@golden-keys-services.fr',
  password: 'password',
  user_type: 'employee',
  first_name: 'Sarah',
  last_name: 'Larousse',
  phone: '0128719455',
  mobile: '0621773433',
  st_number: '103',
  street: 'Rue de la Paix',
  zip: '75016',
  city: 'Paris',
  building: '',
  code: '',
  floor: '',
  lift: true,
  door: '',
  comment: '',
  capacity: 'Full',
  photo_url: 'http://res.cloudinary.com/bessiere/image/upload/v1503060190/sarah_oj4jw0.jpg'
)

employee1 = Employee.create!(
  activity:'Housekeeper',
  contract: 'CDI',
  hired_date: '01/07/2010',
  rib: 'FR1212345123451234567A01234',
  hourly_rate: '20',
  agency: agency1,
  user: user4,
)

employee2 = Employee.create!(
  activity:'Housekeeper',
  contract: 'CDD',
  hired_date: '01/10/2012',
  rib: 'FR1212345123451234567B01234',
  hourly_rate: '22',
  agency: agency1,
  user: user5,
)

employee3 = Employee.create!(
  activity:'Ironer',
  contract: 'CDI',
  hired_date: '01/07/2015',
  rib: 'FR1212345123451234567C01234',
  hourly_rate: '20',
  agency: agency1,
  user: user6,
)

employee4 = Employee.create!(
  activity:'Ironer',
  contract: 'CDD',
  hired_date: '01/08/2014',
  rib: 'FR1212345123451234567D01234',
  hourly_rate: '18',
  agency: agency1,
  user: user7,
)

employee5 = Employee.create!(
  activity:'Manager',
  contract: 'CDI',
  hired_date: '01/05/2010',
  rib: 'FR1212345123451234567E01234',
  hourly_rate: '50',
  agency: agency1,
  user: user3,
)

employee6 = Employee.create!(
  activity:'Concierge',
  contract: 'CDI',
  hired_date: '15/01/2018',
  rib: 'FR1212345123451234567F01234',
  hourly_rate: '80',
  agency: agency2,
  user: user8,
)

employee7 = Employee.create!(
  activity:'Concierge',
  contract: 'CDI',
  hired_date: '15/01/2018',
  rib: 'FR1212345123451234567F01234',
  hourly_rate: '75',
  agency: agency2,
  user: user9,
)

Booking.create!(
  status: 'reservation',
  date: '15/03/2018',
  starting_time: '08:00',
  ending_time: '10:00',
  user: user1,
  service: service1,
  price: '45',
)

booking_2 = Booking.new(
  status: 'reservation',
  date: '22/03/2018',
  starting_time: '08:00',
  ending_time: '10:00',
  user: user2,
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
