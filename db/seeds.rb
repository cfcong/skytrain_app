Trainline.destroy_all
Station.destroy_all
StationTrainline.destroy_all
Attraction.destroy_all

expo = Trainline.create(name: 'Expo Line')
millenium = Trainline.create(name: 'Millenium Line')
canada = Trainline.create(name: 'Canada Line')

wf = Station.create(name:'Waterfront', sequence_num: 0) #  #<Station ... id=45>
br = Station.create(name:'Burrard', sequence_num: 1)
gv = Station.create(name:'Granville', sequence_num: 2)
sc = Station.create(name:'Stadium Chinatown', sequence_num: 3)
ms = Station.create(name:'Main Street-Science World', sequence_num: 4)
bw = Station.create(name:'Broadway', sequence_num: 5)
nn = Station.create(name:'Nanaimo', sequence_num: 6)
tn = Station.create(name:'29th Avenue', sequence_num: 7)
jc = Station.create(name:'Joyce-Collingwood', sequence_num: 8)
pa = Station.create(name:'Patterson', sequence_num: 9)
mt = Station.create(name:'Metrotown', sequence_num: 10)
ro = Station.create(name:'Royal Oak', sequence_num: 11)
em = Station.create(name:'Edmonds', sequence_num: 12)
ts = Station.create(name:'22nd Street', sequence_num: 13)
nw = Station.create(name:'New Westminister', sequence_num: 14)
co = Station.create(name:'Columbia', sequence_num: 15)

StationTrainline.create(trainline: expo, station: wf) # station_id = 45
StationTrainline.create(trainline: expo, station: br)
StationTrainline.create(trainline: expo, station: gv)
StationTrainline.create(trainline: expo, station: sc)
StationTrainline.create(trainline: expo, station: ms)
StationTrainline.create(trainline: expo, station: bw)
StationTrainline.create(trainline: expo, station: nn)
StationTrainline.create(trainline: expo, station: tn)
StationTrainline.create(trainline: expo, station: jc)
StationTrainline.create(trainline: expo, station: pa)
StationTrainline.create(trainline: expo, station: mt)
StationTrainline.create(trainline: expo, station: ro)
StationTrainline.create(trainline: expo, station: em)
StationTrainline.create(trainline: expo, station: ts)  
StationTrainline.create(trainline: expo, station: nw)
StationTrainline.create(trainline: expo, station: co)

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
