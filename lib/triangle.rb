class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
  end
  
  def kind 
    
    if (@side1 == @side2) && (@side2 == @side3)
      :equilateral
    elseif (@side1 == @side2 || @side2 == @side3 || @side1 == @side3)
      :isosceles
    elseif (@side1 != @side2 &&)
      
end

class TriangleError < StandardError
end
