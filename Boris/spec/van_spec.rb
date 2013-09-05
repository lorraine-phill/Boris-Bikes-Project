require 'van'

describe Van do
	
	let(:van) { Van.new }

	context 'empty' do	

		it 'has no bikes' do
			expect(van).not_to have_bikes
		end

	end

	context 'station' do
		
		it 'picks up broken bikes from station' do
			station = double(:station)
			station.should_receive(:unload_broken_bikes) #.and_return([]) #is unload... an array? why return []
			van.pickup_broken_bikes_from(station)	#why not possible as extra arg. 
		end		

		it "van has bikes after pickup" do
			van.has_broken_bikes
		end

		it 'van picksup broken bikes' do
			station = double(:station)	
		end	

		xit "has less bikes after dropoff bikes to station"	do
		end	



		xit 'drops off bikes to station' do
		station = double(:station)	
		expect()
		end

		xit 'has broken bikes after picking them up from station' do
		end

		# xit 'does not have broken bikes if no broken bikes at station' do
		# end
	end	
		
			

	# context 'garage'
		# xit 'drops off broken'

end


