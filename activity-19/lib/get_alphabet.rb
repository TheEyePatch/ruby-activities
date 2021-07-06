def get_alphabet(index)
    arr_index = []
    letter = ('A'..'Z').to_a
    until index < 26
        remainder = index % 26
        arr_index.unshift(letter[remainder-1])
        index = index / 26
    end
    if index < 26 && index > 0
        arr_index.unshift(letter[index-1])
    end
    return arr_index.join('')
end

