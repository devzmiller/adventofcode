# takes a 2d array
def division_sum(input)
  sum = 0
  input.each do |row|
    divisor1 = nil
    divisor2 = nil
    row.each_with_index do |num, index|
      row[index+1..-1].each do |num2|
        if num % num2 == 0
          divisor1 = num
          divisor2 = num2
        elsif num2 % num == 0
          divisor1 = num2
          divisor2 = num
        end
        if divisor1 && divisor2
          break
        end
      end
      if divisor1 && divisor2
        sum += divisor1 / divisor2
        break
      end
    end
  end
  sum
end
