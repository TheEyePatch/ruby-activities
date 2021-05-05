class RectangularPrism
    def initialize(length, width, height)
        @length = length
        @width = width
        @height = height
    end
    def perimeter_front
        total_surface_height + total_surface_width
    end
    def perimeter_side
        total_surface_length + total_surface_height
    end
    def perimeter_base
        total_surface_length + total_surface_width
    end
    def surface_area
        area_front + area_sides + area_top
    end

    private
    def total_surface_length
        @length * 2
    end
    def total_surface_width
        @width * 2
    end
    def total_surface_height
        @height * 2
    end
    def area_sides
        (@height * @length) * 2
    end
    def area_front
        (@height * @width) *2
    end
    def area_top
        (@length * @width) *2
    end
end

prism_one = RectangularPrism.new(20, 5, 10)
p prism_one.surface_area
p prism_one.perimeter_front
p prism_one.perimeter_side

prism_two = RectangularPrism.new(10,5,5)
p prism_two.surface_area
p prism_two.perimeter_base
p prism_two.perimeter_side