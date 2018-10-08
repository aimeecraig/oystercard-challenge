require 'oystercard'

describe Oystercard do
  context 'When testing the card balance' do
    it 'creates a new card with a default balance of 0' do
      expect(subject.balance).to eq 0
    end

    it 'tops up a new card with 10' do
      expect(subject.top_up(10)).to eq 10
    end

    it 'raises an error when top up exceeds 90' do
      expect { subject.top_up(100)}.to raise_error 'Card has exceeded £90 limit.'
    end

    it 'tops up twice, exceeding the MAX_BALANCE constant and raises an error' do
      subject.top_up(50)
      expect { subject.top_up(50)}.to raise_error 'Card has exceeded £90 limit.'
    end

    it 'deducts an amount from the card' do
      subject.top_up(10)
      expect(subject.deduct(5)).to eq 5
    end
  end

  context 'When testing the journey status' do
    it 'returns true when a user touches in' do
      expect(subject.touch_in).to eq true
    end

    it 'returns false when a user touches out' do
      expect(subject.touch_out).to eq false
    end

    it 'returns true when a user is in a journey' do
      subject.touch_in
      expect(subject.in_journey?).to eq true
    end
  end
end
