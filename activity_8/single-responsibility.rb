class Velocity
    def initialize(initial_velocity, final_velocity) # displacement in meters, time in seconds
        @initial_velocity = initial_velocity
        @final_velocity = final_velocity
    end
    def compute_average_velocity
        difference_velocity / 2
    end
    private
    def difference_velocity
        @initial_velocity + @final_velocity
    end
end

velocity_1 = Velocity.new(200,20)
p velocity_1.compute_average_velocity()