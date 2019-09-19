require 'dockingstation'
require 'bike'
DEFAULT_CAPACITY = 20

describe DockingStation do

it { is_expected.to respond_to(:release_bike) }

it { is_expected.to respond_to(:dock).with(1).argument }

it { is_expected.to respond_to(:bike) }

describe '#working?' do
  it 'tests bike is working' do
   bike = Bike.new
   expect(bike.working?).to eq true
  end
end

describe '#dock' do
  it 'returns docked bikes' do
   bike = Bike.new
   subject.dock(bike)
   expect(subject.bike).to eq @bikes
 end

 it 'raises an error for full capacity' do
  DEFAULT_CAPACITY.times { subject.dock Bike.new }
  expect { subject.dock Bike.new }.to raise_error('Docking station full')
  end
end

 describe '#release_bike' do
  it 'releases a bike' do
   bike = Bike.new
   subject.dock(bike)
   expect(subject.release_bike).to eq bike
 end

 it 'raises an error for no bikes' do
   expect {subject.release_bike}.to raise_error('No bikes available')
  end
end

end
