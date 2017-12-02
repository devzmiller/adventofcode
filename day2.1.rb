# takes a 2d array
def checksum(sheet)
  total_checksum = 0
  sheet.each do |row|
    lowest_val = row[0]
    highest_val = row[0]
    row.each do |num|
      if num > highest_val
        highest_val = num
      elsif num < lowest_val
        lowest_val = num
      end
    end
    total_checksum += highest_val - lowest_val
  end
  total_checksum
end
