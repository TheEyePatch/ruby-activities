def permute_a_palindrome(input)
    arr = input.downcase.gsub(' ','').split('')
    boolean_array = []

    arr.uniq.each{ |item| boolean_array.push(arr.count(item).even?) }
    
    if boolean_array.count(false) < 2
        return true
    else
        return false
    end
end

p permute_a_palindrome('Tact Coaa')
