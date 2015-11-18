require 'two_missed'

RSpec.describe 'Find two missed' do

  context 'k=100' do
    let(:k) { 100 }
    before(:each) do
      @data = (1..k).to_a
      @missed = []
      @missed << @data.delete(@data.sample)
      @missed << @data.delete(@data.sample)
      @missed.sort!
    end
    subject { TwoMissed.new(@data).find }

    30.times do 
      it { is_expected.to eq @missed }
    end
  end

end