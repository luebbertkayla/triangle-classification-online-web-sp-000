class Triangle
  
  attr_accessor :side1, :side2, :side3. :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
  end
  
  def kind 
    if (@side1 <= 0) || (@side2 <=0) || (@side3<=0)
      raise TriangleError
    elseif (@side1 = @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side2 <= @side2)
      raise TriangleError
    else 
      if (@side1 == @side2) && (@side2 == @side3)
      :equilateral
      elseif (@side1 == @side2 || @side2 == @side3 || @side1 == @side3)
      :isosceles
      elseif (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
      :scalene
      end
    end
  end
end

class TriangleError < StandardError
end
