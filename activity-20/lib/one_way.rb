def one_way(string1, string2)
    array_one = string1.split('')
    array_two = string2.split('')

    if (array_one-array_two).size == 1 && array_two.size == array_one.size
        return true
    elsif (array_one-array_two).size < 1 && (array_two.size == array_one.size.succ || array_two.size == array_one.size.pred)
        return true
    elsif (array_one-array_two).size == 1 && (array_two.size == array_one.size.succ || array_two.size == array_one.size.pred) && array_one.uniq.size != array_two.uniq.size
        return true
    else
        return false
    end
end

