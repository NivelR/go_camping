class Place < ActiveRecord::Base
	has_one :place_facility
	has_one :place_sport
	has_one :near_place
	has_one :place_cost
	has_one :place_service

	DISQUS_SHORTNAME = Rails.env == "development" ? "gocampingapp".freeze : "gocampingapp".freeze
end
