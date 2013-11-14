require File.expand_path('spec/helper')
require File.expand_path('app/timer')

describe Timer do
  let(:start) { '2013-12-01-09-00' }
  let(:timer) { Timer.new(start) }

  describe 'initialize' do
    it 'sets the start time as a DateTime object' do
      expect(timer.start_date.year). to eq 2013
      expect(timer.start_date.month).to eq 12
      expect(timer.start_date.day).to eq 1
      expect(timer.start_date.hour).to eq 9
      expect(timer.start_date.min).to eq 0
      expect(timer.start_date.sec).to eq 0
    end
  end
end