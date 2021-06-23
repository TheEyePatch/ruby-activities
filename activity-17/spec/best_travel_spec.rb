require 'best_travel'
describe 'BestTravel' do
    it'chooses the best sum' do
        travel = BestTravel.new
        best_travel = travel.choose_best_sum(230, 3, [91, 74, 73, 85, 73, 81, 87])

        expect(best_travel).to eq 228
    end
end

