class Van

	def initialize(bikes=[]) 
		@bikes=bikes
	end	

	def has_bikes?
		!@bikes.empty?
	end

	def pickup_broken_bikes_from(station)
	    @bikes.concat([station.unload_broken_bikes]) 
	end


	def has_broken_bikes?    #why no extra test case? bikes are bikes on van?
	 	!@bikes.select(&:broken?).empty?
	end
		
	
end






# 
