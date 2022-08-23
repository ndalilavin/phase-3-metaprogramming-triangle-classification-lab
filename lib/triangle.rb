class Triangle
  # write code here
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  def kind
    if @x > 0 && @y > 0 && @z > 0 && @x + @y > @z && @y + @z > @x && @z + @x > @y
        if @x == @y && @y == @z
          return :equilateral
        elsif @x == @y || @x == @z || @y == @z
          return :isosceles
        elsif @x != @y && @y != @z
          return :scalene
        end
    else
      begin
        raise TriangleError
      end
    end
  end
  class TriangleError < StandardError
    def message
      "Invalid triangle"
    end
  end
end

t1 = Triangle.new(3, 6, 7)
puts t1.kind
t2 = Triangle.new(1, 0, 4)