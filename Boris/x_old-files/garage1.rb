class Garage

	attr_reader :broken_bikes, :back_to_van

	def initialize
		@broken_bikes = []
		@back_to_van = []
	end

	def add_bike(bike)
		@broken_bikes << bike
	end


	def check_bike(bike)
		if bike.is_broken?
		   add_bike(bike)
		else
			@back_to_van << bike
		end
	end

	def fix_all_bikes
				if bike.is_fixed? 

		       @broken_bikes.each do |bike|
			    bike.fix_bike
			   @back_to_van << bike
		    end
		end
	end


	# def fix_bike(bike)
	# 	if bike.is_fixed? 
	# 		fixed = bike.send
	# 	else
	# 	 	bike.fix
	# 	 	@back_to_van << bike
	# 	end
	# end

end


