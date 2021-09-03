require 'oystercard'

describe Oystercard do

  it { is_expected.to respond_to(:touch_in) }

  it { is_expected.to respond_to(:touch_out) }

  it { is_expected.to respond_to(:in_journey?) }
  
  it 'card is not in journey' do
    expect(subject).to_not be_in_journey
  end

  it 'can touch in' do
    subject.touch_in
    expect(subject).to be_in_journey
  end

  it 'can touch out' do
    subject.touch_in
    subject.touch_out
    expect(subject).not_to be_in_journey
  end

  it 'has balance of zero' do
    expect(subject.balance).to eq (0)
  end

  describe "#top_up" do

    before (:each) do 
      @subject = Oystercard.new
      @subject.top_up(Oystercard::MAXIMUM_AMOUNT)
    end

    it 'tops up oystercard' do
      expect{ subject.top_up(1) }.to change { subject.balance }.by(1)
    end

    it 'raises an error when the maximum amount is exceeded' do
      subject.top_up(Oystercard::MAXIMUM_AMOUNT)
      expect { subject.top_up(Oystercard::MAXIMUM_AMOUNT) }.to raise_error "You have exceeded the maximum amount of £#{Oystercard::MAXIMUM_AMOUNT}"
    end

    describe "#deduct" do
      it 'deducts fare' do
        # subject.top_up(20)
        expect{ subject.deduct(1) }.to change { subject.balance }.by(-1)
      end
    end


      # describe "tests that require top up" do 
  

      # it "should deduct fare" do
      # expect {@oyster.deduct(5)}.to change {@oyster.balance}.by -5
      # end

      # it "should touch in" do 
      # expect



    # describe "#touch_in" do 
    #   it "shows that I am on a journey when I touch in" do 
    #   subject.touch_in
    #   expect(subject.in_journey).to eq true
    #   end
    # end

    # expect(subject).to_not be_full?

     

  end


end