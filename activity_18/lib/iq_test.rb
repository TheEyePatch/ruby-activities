def iq_test(numbers)
     numbers = numbers.split(' ').map{|x| x.to_i}
     if numbers.count{|x| x.odd? && x != 0} == 1
          return numbers.index(numbers.find{|num| num.odd?}) + 1
     elsif numbers.count{|x|x.even? && x!=0 } == 1
          return numbers.index(numbers.find{|num| num.even?}) + 1
     end
end
   
