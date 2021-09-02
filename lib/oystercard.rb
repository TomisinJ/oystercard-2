class Oystercard
  MAXIMUM_AMOUNT = 90

  attr_reader :balance
  attr_reader :in_journey
  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    fail "You have exceeded the maximum amount of £#{MAXIMUM_AMOUNT}" if amount + @balance > MAXIMUM_AMOUNT
    @balance += amount 
  end

  def deduct(amount)
    @balance -= amount
  end

  def touch_in
    @in_journey = true
  end

  def touch_out
    @in_journey = false 
  end

  def in_journey?
    @in_journey
  end
end

# card = Oystercard.new

# card.touch_in
# puts card.answer  -> yes 

