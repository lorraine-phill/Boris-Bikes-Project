require 'garage1'

# let (:garage) {Garage.new}

describe Garage do

	context 'accept broken bikes' do
		it 'should check if bike is broken' do
			garage = Garage.new
			bike = double(:bike)
			expect(bike).to receive(:is_broken?)
			garage.check_bike(bike)
		end

		it 'should accept broken bikes' do
			garage = Garage.new
			bike = double(:bike, 'is_broken?' => true)
			garage.check_bike(bike)
			expect(garage.broken_bikes).to include(bike)
		end

		it 'should reject bikes that arent broken' do
			garage = Garage.new
			bike = double(:bike, 'is_broken?' => false)
			garage.check_bike(bike)
			expect(garage.back_to_van).to include(bike)
		end
	end	

    context 'fix all broken bikes' do
		it 'checks if bike is fixed' do
			garage = Garage.new
			bike = double(:bike, fix: nil)
			expect(bike).to receive(:is_fixed?)
			garage.fix_all_bikes(bike)
		end


	# 	it 'puts the bike in the van if it is fixed' do
	# 		garage = Garage.new
	# 		bike = double(:bike, 'is_fixed?' => true)
	# 		garage.fix_bike(bike)						
	# 		expect(garage.back_to_van).to include(bike) 
	# 	end

	# 	it 'fix the bike if not fixed' do
	# 		garage = Garage.new
	# 		bike = double(:bike, 'is_fixed?' => false)
	# 		expect(bike).to receive(:fix)
	# 		garage.fix_bike(bike)
	# 	end
	end		

end

