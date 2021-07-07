require 'permutations'

describe 'permute_a_palindrome'do
    context 'Returns True' do
        it'returns true to madam' do
            expect(permute_a_palindrome('madam')).to eq(true)
        end

        it 'return true to Tact Coa'do
            expect(permute_a_palindrome('Tact Coa')).to eq(true)
        end

        it 'returns true to Racecar' do
            expect(permute_a_palindrome("Racecar")).to eq(true)
        end
    end

    context 'Returns false' do
        it'returns false to madam' do
            expect(permute_a_palindrome('mada')).to eq(false)
        end

        it 'return false to Tact Coa'do
            expect(permute_a_palindrome('Tact Coaa')).to eq(false)
        end

        it 'returns false to Racecars' do
            expect(permute_a_palindrome("Racecars")).to eq(false)
        end
    end
end