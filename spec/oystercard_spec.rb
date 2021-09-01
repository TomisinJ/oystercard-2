require 'oystercard'

describe Oystercard do

  it 'has balance of zero' do
    expect(subject.balance).to eq (0)
  end

  it 'tops up oystercard' do
    expect{ subject.top_up(1) }.to change { subject.balance }.by(1)
  end

end