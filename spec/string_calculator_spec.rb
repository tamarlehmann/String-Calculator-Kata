require 'string_calculator'

describe StringCalculator do
  subject(:calc) { StringCalculator.new }
  # let(:num) { double :num }

  it 'Returns 0 for an empty string' do
    expect(calc.add("")).to eq(0)
  end

  it 'Returns num if only a single number is given' do
    expect(calc.add("5")).to eq(5)
  end

  it "Returns the sum of two numbers" do
    expect(calc.add("1,2")).to eq(3)
  end

  it "Returns the sum of unknown amount of numbers" do
    expect(calc.add("1,2,3,4,5,6,7")).to eq(28)
  end
end
