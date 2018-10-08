class Oystercard
  attr_accessor :balance, :in_journey

  MAX_BALANCE = 90

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    @balance += amount
    raise "Card has exceeded £#{MAX_BALANCE} limit." if @balance > MAX_BALANCE
    return @balance
  end

  def deduct(amount)
    @balance -= amount
    return @balance
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
