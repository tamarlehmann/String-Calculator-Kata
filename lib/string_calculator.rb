class StringCalculator

  def initialize
    @sum = 0
    @arr = []
  end

  def add(num)
    return 0 if is_empty?(num)
    return num.to_i if single_num?(num)

    @arr = num.gsub!((/[\D]/), " ").split(" ")
    @arr.each { |x| @sum += x.to_i }
    return @sum
  end

  private

  def is_empty?(num)
    num == ""
  end

  def single_num?(num)
    num.length == 1
  end

end
