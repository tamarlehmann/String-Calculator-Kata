class StringCalculator

  def initialize
    @sum = 0
    @arr = []
    @negatives = []
  end

  def add(num)
    return 0 if is_empty?(num)
    return num.to_i if single_num?(num)

    @arr = num.gsub!((/[^\P{P}-]+/), " ").split(" ")
    @arr.each { |x| is_negative?(x) ? @negatives.push(x.to_i) : @sum += x.to_i}
    has_negatives? ? (raise "negatives are not allowed: #{@negatives.join(',')}") : (return @sum)
  end

  private

  def is_empty?(num)
    num == ""
  end

  def single_num?(num)
    num.length == 1
  end

  def is_negative?(num)
    num.to_i < 0
  end

  def has_negatives?
    @negatives.length >= 1
  end

end
