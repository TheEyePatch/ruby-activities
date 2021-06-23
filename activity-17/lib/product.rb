
def get_product(a,b)
    if (0..1) === b
        return a 
    elsif -1 === b
        return -a 
    elsif b < -1
        -a + get_product(a, b+1)
    else
        a + get_product(a, b-1)
    end
end
