Trainline.create(name: 'Expo Line')
Trainline.create(name: 'Millenium Line')
Trainline.create(name: 'Canada Line')

Station.create(name:'Waterfront', sequence_num: 0)
Station.create(name:'Burrard', sequence_num: 1)
Station.create(name:'Granville', sequence_num: 2)
Station.create(name:'Stadium Chinatown', sequence_num: 3)
Station.create(name:'Main Street-Science World', sequence_num: 4)
Station.create(name:'Broadway', sequence_num: 5)
Station.create(name:'Nanaimo', sequence_num: 6)
Station.create(name:'29th Avenue', sequence_num: 7)
Station.create(name:'Joyce-Collingwood', sequence_num: 8)
Station.create(name:'Patterson', sequence_num: 9)
Station.create(name:'Metrotown', sequence_num: 10)
Station.create(name:'Royal Oak', sequence_num: 11)
Station.create(name:'Edmonds', sequence_num: 12)
Station.create(name:'22nd Street', sequence_num: 13)
Station.create(name:'New Westminister', sequence_num: 14)
Station.create(name:'Columbia', sequence_num: 15)

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
