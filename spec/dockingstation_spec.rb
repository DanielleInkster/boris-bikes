require 'dockingstation'

describe DockingStation do

it { is_expected.to respond_to(:release_bike) }

it { is_expected.to respond_to(:dock).with(1).argument }

it { expect(DockingStation.new.release_bike.class).to eq Bike }

it { expect(DockingStation.new.release_bike).to respond_to (:working?)}

it 'returns docked bikes' do
   bike = Bike.new
   subject.dock(bike)
   expect(subject.bike).to eq bike
 end

end
