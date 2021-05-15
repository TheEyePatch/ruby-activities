def is_isogram(word)
    arr = word.split('')
    array = arr.map{|letter| letter.upcase}
    array.sort.each_with_index do |item, index|
        if array.count(item) > 1
            return false
        elsif ('1'..'9') === item
            return false
        end
    end 
    if array.count(array[array.length-1]) < 2
        return true
    end
end

