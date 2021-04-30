
def square (var)
    if var > 0
        array = []
        array_var = var.to_s.split(//)
        array_var.each{|item| array.push(item.to_i)}
        if array.sum > 9
            return square (array.sum)
        else
            check_sum (array.sum) 
        end
    else
        false
    end
end

def check_sum (array)
    case array
        when 1
            return true
        when 4
            return true
        when 7
            return true
        when 9
            return true
        else false
    end
end

puts square 1000