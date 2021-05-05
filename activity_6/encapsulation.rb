class Rectangle
    def initialize(length, width)
        @length = length
        @width = width
    end
    def perimeter
        (2*@length) + (2*@width)
    end
    def area 
        @length * @width
    end
end

rectangle_one = Rectangle.new(20,30)
p rectangle_one.perimeter
p rectangle_one.area

rectangle_two = Rectangle.new(10, 100)
p rectangle_two.perimeter
p rectangle_two.area