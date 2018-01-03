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

puts calculate_file_checksum("day_2_input.txt")
