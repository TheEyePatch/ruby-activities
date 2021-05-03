class Person
    def initialize(name, age, nationality)
        @name = name
        @age = age
        @nationality = nationality
    end
    def introduce
        puts "My name is #{@name}"
        puts "I'm #{@age} years old"
        puts "My nationality is #{@nationality}"
    end
end

person_1 = Person.new('Leif', 21, 'Filipino')
person_1.introduce