class StringCalculator

  def initialize
    @sum = 0
    @arr = []
  end

  def add(num)
    return 0 if is_empty?(num)
    return num.to_i if single_num?(num)

    @arr = num.gsub!((/[^\P{P}-]+/), " ").split(" ")
    @arr.each do |x|
      raise "negatives not allowed: #{x.to_i}" if is_negative?(x.to_i)
      @sum += x.to_i
    end
    return @sum
  end

  private

  def is_empty?(num)
    num == ""
  end

  def single_num?(num)
    num.length == 1
  end

  def is_negative?(num)
    num < 0
  end

end
