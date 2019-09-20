require 'bike'

describe Bike do
  it 'responds to working?' do
  expect(subject).to respond_to(:working?) 
end

it { is_expected.to respond_to(:report_broken) }

describe '#report_broken' do
  it 'reports a broken bike' do
  subject.report_broken
  expect(subject).to be_broken
end
end

end
