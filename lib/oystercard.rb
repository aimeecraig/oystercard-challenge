class Oystercard
  attr_accessor :balance

  MAX_BALANCE = 90

  def initialize
    @balance = 0
  end

  def top_up(amount)
    @balance += amount
    if @balance > MAX_BALANCE
      raise 'Card has exceeded £90 limit.'
    else
      return @balance
    end
  end
end
