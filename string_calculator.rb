class StringCalculator
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def add
    return 0 if input.empty?
    
    input.gsub("\n", delimiter).split(delimiter).map(&:to_i).sum
  end

  private

  def delimiter
    input[0..1] == "//" ? input[2] : ","
  end
end
