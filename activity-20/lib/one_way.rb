def one_way(string1, string2)
    array_one = string1.split('')
    array_two = string2.split('')
    boolean = []

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

p one_way('pale', 'ple')
p one_way('pales', 'pale')
p one_way('pale', 'pales')
p one_way('pale', 'palee')
p one_way('pale', 'bale')
p one_way('pale', 'bake')
p one_way('pale', 'balee')
p one_way('paleee', 'palee')
