require "Dockingstation"

describe Dockingstation do
    describe '#release_bike' do
        it 'releases bike from docking station' do
            bike = Bike.new
            subject.dock(bike)
            expect(subject.release_bike).to eq bike
        end  
        it 'raises error when no bikes are available' do 
            expect { subject.release_bike }.to raise_error 'No bikes available'
        end 

        it 'checks we can dock and release a bike' do
            bike = Bike.new
            dock = subject.dock(bike)
            subject.release_bike
            expect(bike).to be_working
        end 
          
    end
    describe '#dock' do 
        it { is_expected.to respond_to(:dock).with(1).argument }
    
        it 'checks when we dock something' do 
            bike = Bike.new 
            subject.dock(bike)
            expect((subject.bike).include?(bike)).to eq true
        end

        it 'checks for error when dock is full' do
            bike = Bike.new
            Dockingstation::DEFAULT_CAPACITY.times { subject.dock(bike) }
            expect{ subject.dock(bike) }.to raise_error "Bike dock full"
        end

        it 'checks no error when dock is empty and we add a bike' do 
            bike = Bike.new
            expect(subject.dock(bike).count).to eq(1)
        end 
    end 
    describe 'checks' do
        it 'check default capacity' do 
            expect(subject.capacity).to eq Dockingstation::DEFAULT_CAPACITY
        end
    end
    
end
