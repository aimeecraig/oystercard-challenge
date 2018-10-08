class Oystercard
  attr_accessor :balance

  MAX_BALANCE = 90

  def initialize
    @balance = 0
  end

  def top_up(amount)
    @balance += amount
    raise "Card has exceeded £#{MAX_BALANCE} limit." if @balance > MAX_BALANCE
    return @balance
  end
end
