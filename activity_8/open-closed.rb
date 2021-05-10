#================== BAD CODE (WITHOUT OPEN-CLOSED)
# class Area
#     def initialize(shape,length, width = 1)
#         @shape = shape
#         @length = length
#         @width = width
#     end
#     def compute_area
#         case @shape
#         when 'Square'
#             compute_area_square()
#         when 'Triangle'
#             compute_area_triangle()
#         when 'Rectangle'
#             compute_area_rectangle()
#         when 'Circle'
#             compute_area_circle()
#         end
#     end
#     private
#     def compute_area_square
#         @length **2
#     end
#     def compute_area_triangle
#         (@length * @width)/2
#     end
#     def compute_area_rectangle
#         @length * @width
#     end
#     def compute_area_circle
#         pi = Math::PI
#         (@length**2) * pi
#     end
# end

##================== WITH OPEN-CLOSED =============#

class Area
    def initialize(shape,length, width = 1)
        @shape = shape
        @length = length
        @width = width
    end
    def compute_area
        case @shape
        when 'Square'
            AreaSquare.new(@shape,@length).compute_area()
        when 'Triangle'
            AreaTriangle.new(@shape,@length, @width).compute_area()
        when 'Rectangle'
            AreaRectangle.new(@shape, @length, @width).compute_area()
        when 'Circle'
            AreaCircle.new(@shape,@length).compute_area()
        end
        
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
    private
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
        (@length**2) * pi
    end
end

square_1 = Area.new('Square',20)
p square_1.compute_area()

triangle_1 = Area.new('Triangle', 30, 60)
p triangle_1.compute_area()

rectangle_1 = Area.new('Rectangle', 30, 10)
p rectangle_1.compute_area()

circle_1 = Area.new('Circle', 10)
p circle_1.compute_area()