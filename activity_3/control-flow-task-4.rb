arr =[6, 3, 1, 8, 4, 2, 10, 65, 102]
new_arr = []

def check_arr (array, new_arr)
    array.each do |item|
        if item % 2 == 0
            p "#{item} is divisible by 2"
            new_arr.push(item)
        end
    end
end

check_arr(arr, new_arr)
p new_arr