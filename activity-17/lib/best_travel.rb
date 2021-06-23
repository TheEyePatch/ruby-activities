class BestTravel
    def choose_best_sum(t, k, ls)
        ls =  ls.combination(k).to_a
        p new_arr = ls.map{|item| item.sum}
        return new_arr.sort.reverse.find{|item| item <= t}
    end
end

# p choose_best_sum(163, 3, [50, 55, 56, 57, 58])
# p choose_best_sum(163, 3, [50, 55, 56, 57, 58])

# p choose_best_sum(230, 3, [91, 74, 73, 85, 73, 81, 87])
