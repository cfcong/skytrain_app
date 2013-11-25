Trainline.create(name: 'Expo Line')
Trainline.create(name: 'Millenium Line')
Trainline.create(name: 'Canada Line')

Station.create(name:'Waterfront')
Station.create(name:'Burrard')
Station.create(name:'Granville')
Station.create(name:'Stadium Chinatown')
Station.create(name:'Main Street-Science World')
Station.create(name:'Broadway')
Station.create(name:'Nanaimo')
Station.create(name:'29th Avenue')
Station.create(name:'Joyce-Collingwood')
Station.create(name:'Patterson')
Station.create(name:'Metrotown')
Station.create(name:'Royal Oak')
Station.create(name:'Edmonds')
Station.create(name:'22nd Street')
Station.create(name:'New Westminister')
Station.create(name:'Columbia')

Attraction.create(name: 'Sinclair Centre', latitude: '49.285868', longitude: '-123.113868', description: 'It is upscale downtown shopping centre.')
Attraction.create(name: 'Harbour Centre', latitude: '49.2846', longitude: '-123.1123', description: 'It is an observation tower.')
Attraction.create(name: 'Canada Place', latitude: '49.288635', longitude: '-123.111119', description: 'It is a docking terminal for cruises to international ports as well as home to convention centres.')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
