def disemvowel (str)
    new_sentence = []
    array_text = str.split('')
    sentence =''
    vowels = ['a', 'e', 'e', 'i', 'o','u', 'A', 'E', 'I', 'O', 'U']
    array_text.each do |item|
        if !vowels.include?(item)
            new_sentence.push(item)
        end
    end
    new_sentence.each{|item| sentence+= item}
    p sentence
    
end
