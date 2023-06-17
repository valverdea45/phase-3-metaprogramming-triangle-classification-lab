class Triangle
  
  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  class TriangleError < StandardError
  end

  def kind

    if @length_one <= 0 || @length_two <= 0 || @length_three <= 0
      raise TriangleError
      elsif @length_one + @length_two <= @length_three || @length_two + @length_three <= @length_one || @length_one + @length_three <= @length_two
        raise TriangleError
      elsif @length_one == @length_two && @length_two == @length_three
        :equilateral
      elsif [@length_one, @length_two, @length_three].uniq.length == 2
        :isosceles
      else [@length_one, @length_two, @length_three].uniq.length == 3
        :scalene
      end
  end

  

end
