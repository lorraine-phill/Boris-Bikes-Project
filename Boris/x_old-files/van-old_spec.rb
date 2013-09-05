require 'van'

describe Van do
	
	context 'bikes to and from garage' do
	
		it 'drops off bikes to garage' do
			van = Van.new
			bike_from_van = double(:bike_from_van) 
			van.garage_receive(bike_from_van)
			expect(van.bikes_in_garage).to include(bike_from_van)
		end	

		it 'picks up bikes from garage' do
			van = Van.new
			bike_from_van = double(:bike_from_van) 
			back_to_van = double(:back_to_van)
			van.garage_pickup(back_to_van)
			expect(van.fixed_bikes_on_van).to include(back_to_van)
		end

	end	

	context 'bikes to and from station' do

		it 'drops off bikes to station' do
			van = Van.new
			bike_from_van = double(:bike_from_van) 
			van.station_receive
			expect(van.bikes_on_station).to include(fixed)
		end	

		xit 'picks up bikes from station' do
			van = Van.new
			expect(van.bikes_on_station).to include(bikes_on_van)
		end	
	end
		
end


			# broken_bikes_from_van = double(:broken_bikes_from_van)
			# bikes_in_garage = double(:bikes_in_garage)


# it 'check if any bikes at station' do
		# van = Van.new
		# number_of_bikes = double (:numbe_of_bikes)	
		# expect (van.check_number_of_bikes).to be_positive	
		# end	

	 #    it 'check if bike is broken'do
	 #    expect
	 #    end

