require 'string_calculator'

describe StringCalculator do
  subject(:calc) { StringCalculator.new }
  # let(:num) { double :num }

  it 'Add method takes an empty string as an argument' do
    expect(calc.add("")).to eq("")
  end



end
