class Place < ActiveRecord::Base
	has_one :place_facility
	has_one :place_sport
	has_one :near_place
	has_one :place_cost
	has_one :place_service
end
