require 'string_calculator'

describe StringCalculator do
  subject(:calc) { StringCalculator.new }
  # let(:num) { double :num }

  it 'Returns 0 for an empty string' do
    expect(calc.add).to eq(0)
  end



end
