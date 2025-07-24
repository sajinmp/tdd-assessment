class StringCalculator
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def add
    return 0 if input.empty?
    
    raise StandardError.new(error_message) if negative_numbers.any?

    numbers.sum
  end

  private

  def error_message
    "negative numbers not allowed #{negative_numbers.join(',')}"
  end

  def numbers
    input.gsub("\n", delimiter).split(delimiter).map(&:to_i)
  end

  def negative_numbers
    numbers.select(&:negative?)
  end

  def delimiter
    input[0..1] == "//" ? input[2] : ","
  end
end
