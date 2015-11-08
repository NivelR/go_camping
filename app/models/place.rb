class Place < ActiveRecord::Base
	has_one :near_service
	has_one :place_cost
	has_one :place_facility
	has_one :place_service
	has_one :place_sport
end
