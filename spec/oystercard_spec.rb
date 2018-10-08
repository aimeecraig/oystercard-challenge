require 'oystercard'

describe Oystercard do
  it 'creates a new card with a default balance of 0' do
    expect(subject.balance).to eq 0
  end

  it 'tops up a new card with 10' do
    expect(subject.top_up(10)).to eq 10
  end
end
