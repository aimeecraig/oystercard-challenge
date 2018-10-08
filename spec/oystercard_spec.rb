require 'oystercard'

describe Oystercard do
  it 'creates a new card with a default balance of 0' do
    expect(subject.balance).to eq 0
  end

  it 'tops up a new card with 10' do
    expect(subject.top_up(10)).to eq 10
  end

  it 'raises an error when top up exceeds 90' do
    expect { subject.top_up(100)}.to raise_error 'Card has exceeded £90 limit.'
  end
end
