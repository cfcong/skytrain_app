Trainline.destroy_all
Station.destroy_all
StationTrainline.destroy_all
Attraction.destroy_all

expo = Trainline.create!(name: 'Expo Line')
millenium = Trainline.create!(name: 'Millenium Line')
canada = Trainline.create!(name: 'Canada Line')

wf = Station.create!(name:'Waterfront', longitude: 49.285833, latitude: -123.111667, neighbourhood: 'Gastown', sequence_num: 0) #  #<Station ... id=45>
br = Station.create!(name:'Burrard', longitude: 49.285616, latitude: -123.120157, neighbourhood: 'Downtown Vancouver', sequence_num: 1)
gv = Station.create!(name:'Granville', longitude: 49.28275, latitude: -123.116639, neighbourhood: 'Downtown Vancouver', sequence_num: 2)
sc = Station.create!(name:'Stadium Chinatown', longitude: 49.279444, latitude: -123.109444, neighbourhood: 'Downtown Vancouver', sequence_num: 3)
ms = Station.create!(name:'Main Street-Science World', longitude: 49.273114, latitude: -123.100348, neighbourhood: 'Strathcona', sequence_num: 4)
bw = Station.create!(name:'Broadway', longitude: 49.2625, latitude: -123.068889, neighbourhood: 'Grandview Woodland', sequence_num: 5)
nn = Station.create!(name:'Nanaimo', longitude: 49.248184, latitude: -123.05564, neighbourhood: 'Collingwood', sequence_num: 6)
tn = Station.create!(name:'29th Avenue', longitude: 49.244084, latitude: -123.045931, neighbourhood: 'Collingwood', sequence_num: 7)
jc = Station.create!(name:'Joyce-Collingwood', longitude: 49.23835, latitude: -123.031704, neighbourhood: 'Collingwood', sequence_num: 8)
pa = Station.create!(name:'Patterson', longitude: 49.22967, latitude: -123.012376, neighbourhood: 'Maywood', sequence_num: 9)
mt = Station.create!(name:'Metrotown', longitude: 49.225463, latitude: -123.003182, neighbourhood: 'Maywood', sequence_num: 10)
ro = Station.create!(name:'Royal Oak', longitude: 49.220004, latitude: -122.988381, neighbourhood: 'Clinton Glenwood', sequence_num: 11)
em = Station.create!(name:'Edmonds', longitude: 49.212054, latitude: -122.959226, neighbourhood: 'Stride Hill', sequence_num: 12)
ts = Station.create!(name:'22nd Street', longitude: 49.2, latitude: -122.949167, neighbourhood: 'Stride Avenue', sequence_num: 13)
nw = Station.create!(name:'New Westminister', longitude: 49.201354, latitude: -122.912716, neighbourhood: 'Downtown New Westminister', sequence_num: 14)
co = Station.create!(name:'Columbia', longitude: 49.20476, latitude: -122.906161, neighbourhood: 'Downtown New Westminister', sequence_num: 15)

StationTrainline.create!(trainline: expo, station: wf) # station_id = 45
StationTrainline.create!(trainline: expo, station: br)
StationTrainline.create!(trainline: expo, station: gv)
StationTrainline.create!(trainline: expo, station: sc)
StationTrainline.create!(trainline: expo, station: ms)
StationTrainline.create!(trainline: expo, station: bw)
StationTrainline.create!(trainline: expo, station: nn)
StationTrainline.create!(trainline: expo, station: tn)
StationTrainline.create!(trainline: expo, station: jc)
StationTrainline.create!(trainline: expo, station: pa)
StationTrainline.create!(trainline: expo, station: mt)
StationTrainline.create!(trainline: expo, station: ro)
StationTrainline.create!(trainline: expo, station: em)
StationTrainline.create!(trainline: expo, station: ts)  
StationTrainline.create!(trainline: expo, station: nw)
StationTrainline.create!(trainline: expo, station: co)

Attraction.create!(name: 'Sinclair Centre', latitude: '49.285868', longitude: '-123.113868', description: 'It is upscale downtown shopping centre.')
Attraction.create!(name: 'Harbour Centre', latitude: '49.2846', longitude: '-123.1123', description: 'It is an observation tower.')
Attraction.create!(name: 'Canada Place', latitude: '49.288635', longitude: '-123.111119', description: 'It is a docking terminal for cruises to international ports as well as home to convention centres.')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)
