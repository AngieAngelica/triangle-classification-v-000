class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side_1,side_2,side_3)
    @side1 = side_1
    @side2 = side_2
    @side3 = side_3
  end

  def kind
    triangle1 = @side2 + @side3 - @side1
    triangle2 = @side1 + @side3 - @side2
    triangle3 = @side1 + @side2 - @side3

    if triangle1 <= 0 || trangle2 <= 0 || triangle3 <= 0 || @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError, "This is not a valid triangle!"
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end