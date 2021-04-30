
def square (var)
    num =1
    while num <= var
        if num**2 == var
            return true
        elsif num**2 > var
           return false
        elsif num**2 < var
            num+=1
        end
    end
    
end
p square 100