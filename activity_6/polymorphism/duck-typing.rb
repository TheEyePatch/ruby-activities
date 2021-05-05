class Vehicle
    def model(model)
        model.model
    end
    def maximum_pax(pax)
        pax.maximum_pax
    end
    def number_wheels(wheels)
        wheels.number_wheels
    end
    def meters_in_seconds(velocity)
        @velocity = velocity.meters_in_seconds
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

class Motor
    def initialize(model, wheels, pax, velocity)
        @model = model
        @wheels = wheels
        @pax = pax
        @velocity = velocity
    end
    def model 
        p "The model of this motorcyle is #{@model}"
    end
    def number_wheels
        p"This motorcycle has #{@wheels} wheels"
    end
    def maximum_pax
        p "This motorcycle can carry #{@pax} people including the driver"
    end
    def meters_in_seconds
       return @velocity
    end
end

class Car 
    def initialize(model, wheels, pax, velocity)
        @model = model
        @wheels = wheels
        @pax = pax
        @velocity = velocity
    end
    def model 
      p "The model of this Car is #{@model}"
    end
    def number_wheels
        p"This Car has #{@wheels} wheels"
    end
    def maximum_pax
        p "This Car can carry #{@pax} people including the driver"
    end
    def meters_in_seconds
        return @velocity
    end
end

motorcycle_one = Motor.new('Kawasaki ZX-14', 2, 2, 186)
motorcycle = Vehicle.new
motorcycle.model(motorcycle_one)
motorcycle.maximum_pax(motorcycle_one)
motorcycle.number_wheels(motorcycle_one)
motorcycle.meters_in_seconds(motorcycle_one)


car = Vehicle.new
car_one = Car.new('2020 Nissan GT-R Nismo', 4, 2, 328)
car.model(car_one)
car.maximum_pax(car_one)
car.number_wheels(car_one)
car.meters_in_seconds(car_one)