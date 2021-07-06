require 'get_alphabet'

describe 'get_alphabet' do
    it 'returns A' do
        expect(get_alphabet(1)).to eq('A')
    end

    it 'returns CV' do
        expect(get_alphabet(100)).to eq('CV')
    end

    it 'returns ALL' do
        expect(get_alphabet(1000)).to eq('ALL')
    end

    it 'returns AA' do
        expect(get_alphabet(27)).to eq('AA')
    end

    it 'returns SF' do
        expect(get_alphabet(500)).to eq('SF')
    end

    it 'returns CL' do
        expect(get_alphabet(90)).to eq('CL')
    end
end