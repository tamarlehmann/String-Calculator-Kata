class StringCalculator

  def add(num)
    arr = num.split(",")
    sum = 0
    return 0 if (num == "")

    return num.to_i if arr.length == 1
    arr.each { |x| sum += x.to_i }
    return sum
    
  end

end
