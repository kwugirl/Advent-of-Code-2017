def calculate_row_checksum row
  processed_input = row.split(" ").map(&:to_i).sort
  processed_input[-1] - processed_input[0]
end
