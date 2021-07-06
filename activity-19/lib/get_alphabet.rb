def get_alphabet(index)
    arr_index = []
    letter = ('A'..'Z').to_a
    until index < 26
        remainder = index % 26
        arr_index.unshift(letter[remainder-1])
        index = index / 26
    end
    if index < 26 && index > 0
        arr_index.unshift(letter[index-1])
    end
    return arr_index.join('')
end


# describe 'get_alphabet' do
#     it 'returns A' do
#         expect(get_alphabet(1)).to eq('A')
#     end

#     it 'returns CV' do
#         expect(get_alphabet(100)).to eq('CV')
#     end

#     it 'returns ALL' do
#         expect(get_alphabet(1000)).to eq('ALL')
#     end

#     it 'returns AA' do
#         expect(get_alphabet(27)).to eq('AA')
#     end

#     it 'returns SF' do
#         expect(get_alphabet(500)).to eq('SF')
#     end

#     it 'returns CL' do
#         expect(get_alphabet(90)).to eq('CL')
#     end
# end
