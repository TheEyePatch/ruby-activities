require 'iq_test'

describe 'iq_test' do
    it'returns 3' do
        expect(iq_test("2 4 7 8 10")).to eq(3)
    end

    it'returns 1' do
        expect(iq_test("1 2 2")).to eq(1)
    end

    it 'returns 2' do
        expect(iq_test("1 2 1 1")).to eq(2)
    end
end