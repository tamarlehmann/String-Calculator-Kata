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

  it "Returns sum of numbers if new lines separate rather than commas" do
    expect(calc.add("1\n2,3")).to eq(6)
  end

  it "Returns sum of numbers when different delimiters are used" do
    expect(calc.add("//;\n1;2")).to eq(3)
  end

  it "Throws an exception when passed a negative number" do
    message = "negatives not allowed: -1"
    expect{calc.add("1,4,-1")}.to raise_exception{message}
  end

  it "Throws an exception when passed multiple negative numbers" do
    message = "negatives not allowed: -1, -3"
    expect{calc.add("1,-1,-3")}.to raise_exception{message}
  end

  it "Returns sum of numbers with delimiters of any length and format" do
    expect(calc.add("//[***]\n1***2***3")).to eq(6)
  end
end
