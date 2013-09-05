class Van

	 attr_reader :bikes_in_garage, :fixed_bikes_on_van, :bikes_on_station


	def initialize
	 	@bikes_in_garage = []
	 	@fixed_bikes_on_van = []
	 	@bikes_on_station = []
	 end

	 def garage_receive(bike_from_van)
	 	@bikes_in_garage << bike_from_van
	 end
     
	def garage_pickup(back_to_van)
	 	@fixed_bikes_on_van << back_to_van
	 end

	def station_receive
	 	@fixed_bikes_on_van.each do |bike| 
		bikes_on_station << @fixed_bikes_on_van
		end

	end


     # def garage_drop_off(broken_bikes_from_van)
     # end

end

