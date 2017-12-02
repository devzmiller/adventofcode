def inverse_captcha2(digits)
  sum = 0
  digits.split('').each_with_index do |char, index|
    if digits[index+(digits.length/2)] && digits[index+(digits.length/2)].to_i == char.to_i
      sum += char.to_i
    elsif !digits[index+(digits.length/2)] && digits[digits.length/2 - (digits.length - index)].to_i == char.to_i
      sum += char.to_i
    end
  end
  sum
end
