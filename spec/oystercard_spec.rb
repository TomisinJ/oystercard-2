require 'oystercard'

describe Oystercard do
  it 'has balance of zero' do
    expect(subject.balance).to eq (0)
  end

  describe "#top_up" do
    it 'tops up oystercard' do
      expect{ subject.top_up(1) }.to change { subject.balance }.by(1)
    end

    it 'raises an error when the maximum amount is exceeded' do
      subject.top_up(Oystercard::MAXIMUM_AMOUNT)
      expect { subject.top_up(Oystercard::MAXIMUM_AMOUNT) }.to raise_error "You have exceeded the maximum amount of £#{Oystercard::MAXIMUM_AMOUNT}"
    end

  end


end