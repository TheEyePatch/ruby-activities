arr_1 = [34, 15, 88, 2]
arr_2 = [34, -345, -1, 100]

def smallest (arr)
    x = arr[0]
    arr.each_with_index do |item, index|
        if x >= item
            x = item
        end
    end
    return x
end
p smallest(arr_1)
p smallest(arr_2)
