def inverse_captcha(digits)
  sum = 0
  digits.split('').each_with_index do |char, index|
    if digits[index+1] && digits[index+1].to_i == char.to_i
      sum += char.to_i
    elsif !digits[index+1] && digits[0].to_i == char.to_i
      sum += char.to_i
    end
  end
  sum
end
