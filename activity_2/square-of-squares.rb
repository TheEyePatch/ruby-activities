
# def square (var)
#     num =1
#     while num <= var
#         if num**2 == var
#             return true
#         elsif num**2 > var
#            return false
#         elsif num**2 < var
#             num+=1
#         end
#     end
    
# end
# p square 33
def square (var)
    if var > 0
        num =1
        while num <= var
            if num**2 == var
                return true
            elsif num**2 > var
               return false
            elsif num**2 < var
                num+=1
            end
        end
    elsif var === 0
        return true
    else 
        return false
    end
   
end
# p square 1000
# p square 25
# p square 26
# p square 33
# p square 1
# p square 100
# p square 0