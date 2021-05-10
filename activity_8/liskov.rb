class Area
    def initialize(length, width=1)
        @length = length
        @width = width
    end
    def compute_area
        @length * @width
    end
end

class AreaSquare < Area
    def compute_area
        @length **2
    end
end
class AreaTriangle < Area
    def compute_area
        compute_product/2
    end
    def compute_product
        @width * @length 
    end
end
class AreaRectangle < Area
    def compute_area
        @length * @width
    end
end
class AreaCircle < Area
    def compute_area
        pi = Math::PI
        @width = 1
        (@length**2) * pi
    end
end


# area_rectangle = Area.new(30,10)
# p area_rectangle.compute_area()
# area_square = AreaSquare.new(20)
# p area_square.compute_area()
# area_circle = AreaCircle.new(10)
# p area_circle.compute_area()
# area_triangle = AreaTriangle.new(20,10)
# p area_triangle.compute_area()