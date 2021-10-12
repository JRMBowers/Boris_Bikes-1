require "Dockingstation"

describe Dockingstation do
    describe '#release_bike' do
        it 'releases bike from docking station' do
            bike = Bike.new
            subject.dock(bike)
            expect(subject.release_bike).to eq bike
        end  

        it 'adds a bike to number of bikes released' do
        #     dockingstation = Dockingstation.new 
        #     expect{dockingstation.release_bike}.not_to raise_error 
            bike = Bike.new
            dock = subject.dock(bike)
            subject.release_bike
            expect(bike).to be_working
        # rescue 
        #     RSpec::Expectations::ExpectationNotMetError => e
        #     expect(e.message).not_to include 'AError'
        end 
          
    end
    describe '#dock' do 
        it { is_expected.to respond_to(:dock).with(1).argument }
    end 
    
    it 'dock something' do 
        bike = Bike.new 
        subject.dock(bike)
        expect(subject.bike).to eq bike 
    end 

    describe '#release_bike' do
        it 'raises error when no bikes are available' do 
            expect { subject.release_bike }.to raise_error 'No bikes available'
        end 
    end 
end
