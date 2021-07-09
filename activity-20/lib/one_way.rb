def one_way(string1, string2)
    array_one = string1.split('')
    array_two = string2.split('')

    if (array_one-array_two).size == 1 && array_two.size == array_one.size
        return true
    elsif (array_one-array_two).size < 1 && (array_two.size == array_one.size.succ || array_two.size == array_one.size.pred)
        return true
    elsif (array_one-array_two).size == 1 && (array_two.size == array_one.size.succ || array_two.size == array_one.size.pred) && array_one.uniq.size != array_two.uniq.size
        return true
    else
        return false
    end
end

# describe 'one_way'do
#     context 'Returns True' do
#         it'returns true to pale, pale' do
#             expect(one_way('pale', 'palee')).to eq(true)
#         end

#         it'returns true to pales, pale' do
#             expect(one_way('pales', 'pale')).to eq(true)
#         end

#         it'returns true to pale, pales' do
#             expect(one_way('pale', 'pales')).to eq(true)
#         end

#         it'returns true to pale, palee' do
#             expect(one_way('pale', 'palee')).to eq(true)
#         end

#         it'returns true to aale, bale' do
#             expect(one_way('pale', 'bale')).to eq(true)
#         end
#     end

#     context 'Returns false' do
#         it'returns false to pale, bake' do
#             expect(one_way('pale', 'bake')).to eq(false)
#         end

#         it'returns false to pale, balee' do
#             expect(one_way('pale', 'balee')).to eq(false)
#         end

#         it'returns false to palee, bale' do
#             expect(one_way('palee', 'bale')).to eq(false)
#         end

#         it'returns false to palle, bale' do
#             expect(one_way('palle', 'bale')).to eq(false)
#         end
#     end    
# end
