# INHERITANCE #

class Vehicle
    def initialize(model, wheels,pax, velocity) ##velocity in km/hr
        @model = model
        @wheels = wheels
        @pax = pax
        @velocity = velocity
    end
    def model
        p "The model of this vehicle is #{@model}"
    end
    def maximum_pax
        p"This Vehicle can hold #{@pax} passengers including driver"
    end
    def number_wheels
        p "This vehicle has #{@wheels} wheels"
    end
    def meters_in_seconds
        p "This vehicle can run 50 meters in #{calc_time} seconds"
    end
    private
    def calc_time
        50/convert_velocity
    end
    def convert_velocity
        (@velocity * 1000)/3600.to_f
    end
end

class Motor < Vehicle
    def maximum_pax
        p "This motorcycle can carry #{@pax} people including driver"
    end
    def number_wheels
        p"This motorcycle has #{@wheels} wheels"
    end
end
class Car < Vehicle
    def model
        p"The model of this car is #{@model}"
    end
    def maximum_pax
        p"This car can carry #{@pax} people including driver"
    end
    def number_wheels
        p"This car has #{@wheels} wheels"
    end
end
motorcyle_one = Motor.new('Kawasaki ZX-14',2,2, 186)
motorcyle_one.model
motorcyle_one.maximum_pax
motorcyle_one.meters_in_seconds

car_one = Car.new('Ford Ranger FX4 MAX', 4, 5, 170)
car_one.model
car_one.maximum_pax
car_one.meters_in_seconds


