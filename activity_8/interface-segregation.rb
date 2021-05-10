class Prism
    def initialize(length, width, height)
        @length = length
        @width = width
        @height = height
    end
end

class RectangularPrism < Prism
    def perimeter_front
       Front.new(@height, @width).compute_perimeter()
    end
    def perimeter_side
        Side.new(@length, @height).compute_perimeter()
    end
    def perimeter_base
        Base.new(@length, @width).compute_perimeter()
    end
    def surface_area
        Front.new(@height, @width).compute_area() + Side.new(@length, @width).compute_area() + Base.new(@length, @width).compute_area()
    end
end

class Front
    def initialize(height, width)
        @height = height
        @width = width
    end
    def compute_perimeter
        total_surface_height + total_surface_width
    end
    def compute_area
        @height * @width
    end
    private
    def total_surface_width
        @width * 2
    end
    def total_surface_height
        @height * 2
    end
end
class Side
    def initialize(length, height)
        @length = length
        @height = height
    end
    def compute_perimeter
        total_surface_length + total_surface_height
    end
    def compute_area
        @length * @height
    end
    private
    def total_surface_length
        @length * 2
    end
    def total_surface_height
        @height * 2
    end
end

class Base
    def initialize(length, width)
        @length = length
        @width = width
    end
    def compute_perimeter
        total_surface_length + total_surface_width
    end
    def compute_area
        @length * @width
    end
    private
    def total_surface_length
        @length * 2
    end
    def total_surface_width
        @width * 2
    end
end


# prism_one = RectangularPrism.new(10,30, 5)
# p prism_one.perimeter_front()
# p prism_one.perimeter_side()
# p prism_one.perimeter_base()
# p prism_one.surface_area()
