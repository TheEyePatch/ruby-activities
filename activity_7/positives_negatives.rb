arr = [1,2,3,4,5,6,7,8,9,10,-11,-12,-13,-14, -15]
array =[]
def check_intergers(arr)
    counter = 0
    negatives = []
    output = []
    arr.each do |item| 
        if item > 0
            counter +=1
            output[0] = counter
        elsif item < 0
            negatives.push(item)
            output[1] = negatives.sum
        end
    end
    return output
end
p check_intergers(arr)
p check_intergers(array)