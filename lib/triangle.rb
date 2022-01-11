require "pry"

class Triangle

  def initialize(a, b, c)
    if a <= 0 || b <= 0 || c <= 0
      begin
        raise TriangleError
        puts error.zero_error
      end
    elsif a + b <= c || b + c <= a || c + a <= b
      begin
        raise TriangleError
        puts error.ineq_error
      end
    elsif a == b && b == c && c == a
      @triangle = :equilateral
    elsif a != b && b != c && c != a
      @triangle = :scalene
    elsif a && b != c || b && c != a || a && c != b
      @triangle = :isosceles
    end
  end

  def kind
      @triangle
  end

  class TriangleError < StandardError
    def zero_error
      "triangle class cannot have a side of 0 or less"
    end
    def ineq_error
      "the sum of the length of two sides must be greater than the side of the third"
    end
  end

  # binding.pry
end
