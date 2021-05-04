class Confection
    def prepare
        p "Baking at 350 degrees for 25 minutes"
    end
end

class BananaCake < Confection ;end

class Cupcake < Confection
    def prepare
        super
        p "Applying frosting"
    end
end
banana_cake = BananaCake.new
banana_cake.prepare

cup_cake = Cupcake.new
cup_cake.prepare