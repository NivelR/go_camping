# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
places = [
	{:name => ' Patio Santa Ana',:description => 'un lindo patio',:latitude => "-27.471782", :longitude => "-58.669532", :country => "argentina", :state => "corrientes"},
	{:name => ' Campus UNNE',:description => 'un lindo patio',:latitude => "-27.4653708", :longitude => "-58.793242,15z", :country => "argentina", :state => "corrientes"},     
	{:name => ' Yacare',:description => 'un lindo patio',:latitude => "-27.457030", :longitude => "-58.823898", :country => "argentina", :state => "corrientes"}     
]

places.each do |place|
   Place.create!(place)
end