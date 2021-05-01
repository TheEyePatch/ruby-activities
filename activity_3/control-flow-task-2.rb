

if (0..50) === 51
    p true
end
def check_number (num)
    if (0..50) === num
        return "#{num} is between 0 and 50"
    elsif (51..100) === num
        return "#{num} is between 51 and 100"
    elsif num < 0
        return "#{num} is not a positive integer"
    else
        return "#{num} is above 100"
    end
end

p "Input a number:"
number = gets.chomp

p check_number number.to_i
