#================= BAD DEPENCY-INVERSION ====================#
# class Area
#     def initialize(shape,length, width = 1)
#         @shape = shape
#         @length = length
#         @width = width
#     end
#     def compute_area
#         case @shape
#         when 'Square'
#             AreaSquare.new(@shape,@length).compute_area()
#         when 'Triangle'
#             AreaTriangle.new(@shape,@length, @width).compute_area()
#         when 'Rectangle'
#             AreaRectangle.new(@shape, @length, @width).compute_area()
#         when 'Circle'
#             AreaCircle.new(@shape,@length).compute_area()
#         end
        
#     end
# end

# class AreaSquare < Area
#     def compute_area
#         @length **2
#     end
# end
# class AreaTriangle < Area
#     def compute_area
#         compute_product/2
#     end
#     private
#     def compute_product
#         @width * @length
#     end
# end
# class AreaRectangle < Area
#     def compute_area
#         @length * @width
#     end
# end
# class AreaCircle < Area
#     def compute_area
#         pi = Math::PI
#         (@length**2) * pi
#     end
# end


#========= WITH DEPENDENCY-INVERSION ==========
class Area
    def initialize(area_calculator,length, width = 1)
        @area_calculator = area_calculator
        @length = length
        @width = width
    end
    def compute_area
        @area_calculator.compute_area(@length, @width)
    end
end

class AreaSquare
    def compute_area(length, width)
        width = 1
        return length **2
    end
end
class AreaTriangle
    def compute_area(length, width)
        @length = length
        @width = width
        compute_product/2
    end
    private
    def compute_product
        @width * @length
    end
end
class AreaRectangle 
    def compute_area(length, width)
        length * width
    end
end
class AreaCircle
    def compute_area(length, width)
        width = 1
        pi = Math::PI
       return (length**2) * pi
    end
end

square_1 = Area.new(AreaSquare.new,20)
p square_1.compute_area()

triangle_1 = Area.new(AreaTriangle.new, 10, 5)
p triangle_1.compute_area()

rectangle_1 = Area.new(AreaRectangle.new, 30, 10)
p rectangle_1.compute_area()

circle_1 = Area.new(AreaCircle.new, 10)
p circle_1.compute_area()