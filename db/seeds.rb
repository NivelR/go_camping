# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
places = [
  {:name => ' Patio Santa Ana', :description => 'un lindo patio Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus iaculis sollicitudin tellus ut eleifend. Sed mattis volutpat placerat. Sed euismod orci et metus luctus viverra. Morbi a malesuada libero. Donec ac diam ornare, fermentum dolor a, tempus nunc. Donec faucibus lacus lacinia, tristique enim et, finibus magna. Curabitur tempor sapien a placerat varius. Vivamus fermentum mauris felis, ac tincidunt nunc posuere posuere. Aenean neque arcu, imperdiet ac nulla at, posuere finibus mauris. Quisque id ultrices lorem. Sed faucibus sit amet massa quis semper. ', :latitude => "-27.471782", :longitude => "-58.669532", :country => "argentina", :state => "corrientes", :feature_image => "https://source.unsplash.com/category/nature/1600x900", :vacancy => true},
  {:name => ' Campus UNNE', :description => 'un lindo patio Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus iaculis sollicitudin tellus ut eleifend. Sed mattis volutpat placerat. Sed euismod orci et metus luctus viverra. Morbi a malesuada libero. Donec ac diam ornare, fermentum dolor a, tempus nunc. Donec faucibus lacus lacinia, tristique enim et, finibus magna. Curabitur tempor sapien a placerat varius. Vivamus fermentum mauris felis, ac tincidunt nunc posuere posuere. Aenean neque arcu, imperdiet ac nulla at, posuere finibus mauris. Quisque id ultrices lorem. Sed faucibus sit amet massa quis semper. ', :latitude => "-27.4653708", :longitude => "-58.793242,15z", :country => "argentina", :state => "corrientes", :feature_image => "https://source.unsplash.com/category/nature/1600x900", :vacancy => true},     
  {:name => ' Yacare', :description => 'un lindo patio Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus iaculis sollicitudin tellus ut eleifend. Sed mattis volutpat placerat. Sed euismod orci et metus luctus viverra. Morbi a malesuada libero. Donec ac diam ornare, fermentum dolor a, tempus nunc. Donec faucibus lacus lacinia, tristique enim et, finibus magna. Curabitur tempor sapien a placerat varius. Vivamus fermentum mauris felis, ac tincidunt nunc posuere posuere. Aenean neque arcu, imperdiet ac nulla at, posuere finibus mauris. Quisque id ultrices lorem. Sed faucibus sit amet massa quis semper. ', :latitude => "-27.457030", :longitude => "-58.823898", :country => "argentina", :state => "corrientes", :feature_image => "https://source.unsplash.com/category/nature/1600x900", :vacancy => true}     
]
places.each do |place|
   Place.create!(place)
end

place_costs = [
  {:regard => "Monedas o billetes de tu pais", :price => "20.0", :place_id => '1'},
  {:regard => "Monedas o billetes de tu pais", :price => "15.0", :place_id => '2'},
  {:regard => "Monedas o billetes de tu pais", :price => "10.0", :place_id => '3'}
]
place_costs.each do |cost|
   PlaceCost.create!(cost)
end


place_facilities = [
  {:private_toilet => false, :shared_toilet => true, :hot_water => true, :fridge => true, :kitchen => true, :microwave => true, :parking => true, :boat_ramp => false, :barbecue_area => true, :grill_shed => true, :campfire_place => true, :swimming_pool => true, :sound_system => true, :other => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus iaculis sollicitudin tellus ut eleifend. Sed mattis volutpat placerat. Sed euismod orci et metus luctus viverra. Morbi a malesuada libero. Donec ac diam ornare, fermentum dolor a, tempus nunc. Donec faucibus lacus lacinia, tristique enim et, finibus magna. Curabitur tempor sapien a placerat varius. Vivamus fermentum mauris felis, ac tincidunt nunc posuere posuere. Aenean neque arcu, imperdiet ac nulla at, posuere finibus mauris. Quisque id ultrices lorem. Sed faucibus sit amet massa quis semper. ", :place_id => "3"},
  {:private_toilet => false, :shared_toilet => true, :hot_water => false, :fridge => true, :kitchen => false, :microwave => false, :parking => true, :boat_ramp => false, :barbecue_area => true, :grill_shed => true, :campfire_place => false, :swimming_pool => true, :sound_system => false, :other => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus iaculis sollicitudin tellus ut eleifend. Sed mattis volutpat placerat. Sed euismod orci et metus luctus viverra. Morbi a malesuada libero. Donec ac diam ornare, fermentum dolor a, tempus nunc. Donec faucibus lacus lacinia, tristique enim et, finibus magna. Curabitur tempor sapien a placerat varius. Vivamus fermentum mauris felis, ac tincidunt nunc posuere posuere. Aenean neque arcu, imperdiet ac nulla at, posuere finibus mauris. Quisque id ultrices lorem. Sed faucibus sit amet massa quis semper. ", :place_id => "2"},
  {:private_toilet => false, :shared_toilet => true, :hot_water => false, :fridge => false, :kitchen => true, :microwave => false, :parking => true, :boat_ramp => true, :barbecue_area => true, :grill_shed => true, :campfire_place => true, :swimming_pool => false, :sound_system => false, :other => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus iaculis sollicitudin tellus ut eleifend. Sed mattis volutpat placerat. Sed euismod orci et metus luctus viverra. Morbi a malesuada libero. Donec ac diam ornare, fermentum dolor a, tempus nunc. Donec faucibus lacus lacinia, tristique enim et, finibus magna. Curabitur tempor sapien a placerat varius. Vivamus fermentum mauris felis, ac tincidunt nunc posuere posuere. Aenean neque arcu, imperdiet ac nulla at, posuere finibus mauris. Quisque id ultrices lorem. Sed faucibus sit amet massa quis semper. ", :place_id => "1"}
]
place_facilities.each do |place_facility|
   PlaceFacility.create!(place_facility)
end


near_places = [
  {:kiosk => true, :disco => false, :beach => false, :national_park => true, :other => "", :place_id => "3"},
  {:kiosk => true, :disco => true, :beach => true,:national_park => false, :other => "private beach", :place_id => "2"},
  {:kiosk => true, :disco => true, :beach => true, :national_park => false, :other => "Universty facilities", :place_id => "1"}
]
near_places.each do |near_place|
   NearPlace.create!(near_place)
end

place_services = [
  {:dry_cleaning =>false, :public_transport => "Bus 109, 11", :other => "horse,  quadricycle", :place_id => "3"},
  {:dry_cleaning => false, :public_transport => "Bus 105A, 105C, 105D, 110", :other => "Private Security", :place_id => "2"},
  {:dry_cleaning => false, :public_transport => "Bus 104A, 104C, 104D, 110", :other => "Mesas, Sillas", :place_id => "1"}
]
place_services.each do |service|
   PlaceService.create!(service)
end

place_sports = [
  {:ping_pong_table => true, :canoe => false, :soccer_field => false, :platform_tennis_court => false, :volleyball_court => false, :other => "", :place_id => "3"},
  {:ping_pong_table => false, :canoe => false, :soccer_field => true, :platform_tennis_court => false, :volleyball_court => true, :other => "rugby court", :place_id => "2"},
  {:ping_pong_table => false, :canoe => true, :soccer_field => false, :platform_tennis_court => false, :volleyball_court => true, :other => "fishing zone", :place_id => "1"}
]
place_sports.each do |place_sport|
   PlaceSport.create!(place_sport)
end