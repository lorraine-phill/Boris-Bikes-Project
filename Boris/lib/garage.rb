class Garage

	attr_reader :broken_bikes, :back_to_van

	def initialize
		@broken_bikes = []
		@back_to_van = []
	end

	def check_bike(bike)
		if bike.is_broken?
			@broken_bikes << bike
		else
			@back_to_van << bike
		end
	end

	def fix_bike(bike)
		if bike.is_fixed? 
			@back_to_van << bike
		else
		 	bike.fix # how to define`?
		 	@back_to_van << bike
		end
	end

end




