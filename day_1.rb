def solve_captcha captcha

end

def process input
  circular_input = input + input[0]
  circular_input.split("").map(&:to_i)
end

