arr = [1,2,3,4,5,6,7,8,9,10,-11,-12,-13,-14, -15]
array =[1]
def count_positives_sum_negatives(lst)
    #your code here
    counter = 0
    negatives = []
    output = []
    lst.each do |item| 
        if item > 0
            counter +=1
        elsif item <= 0
            negatives.push(item)
        end
        output[0] = counter
        output[1] = negatives.sum        
    end
    return output
end
p count_positives_sum_negatives(arr)
p count_positives_sum_negatives(array)