def calculate_row_checksum row
  processed_input = row.split(" ").map(&:to_i).sort
  processed_input[-1] - processed_input[0]
end

def calculate_file_checksum file
  sum = 0
  File.readlines(file).each do |line|
    sum += calculate_row_checksum(line)
  end
  sum
end

def find_divisible_pair row
  processed_input = row.split(" ").map(&:to_i).sort

  processed_input.each_with_index do |digit, index|
    rest_of_input = processed_input[(index+1)..-1]
    pair = [digit, find_multiple(digit, rest_of_input)]

    return pair unless pair[1] == 0
  end
end

def find_multiple digit, candidates
  candidates.each do |candidate|
    return candidate if candidate % digit == 0
  end

  0
end

def calculate_file_evenly_divisible_checksum file
  sum = 0
  File.readlines(file).each do |line|
    pair = find_divisible_pair(line)
    sum += pair[1]/pair[0]
  end
  sum
end

puts calculate_file_checksum("day_2_input.txt")
puts calculate_file_evenly_divisible_checksum("day_2_input.txt")
