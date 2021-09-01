class Oystercard
  MAXIMUM_AMOUNT = 90

  attr_reader :balance
  def initialize
    @balance = 0
  end

  def top_up(amount)
    fail "You have exceeded the maximum amount of £#{MAXIMUM_AMOUNT}" if amount + @balance > MAXIMUM_AMOUNT
    @balance += amount 
  end

end