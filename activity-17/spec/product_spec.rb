require 'product'

describe "Product" do
    it "should return zero if any num is zero" do
        expect(get_product(0, 5)).to eq(0)
    end
    it "should return the number if multiplied by one" do
        expect(get_product(1, 5)).to eq(5)
    end
    it "should return product of two positive number" do
        expect(get_product(5, 5)).to eq(25)
    end

    it "should return product of two positive number" do
        expect(get_product(100, 5)).to eq(500)
    end

    it "should return product of 10 and 20 number" do
        expect(get_product(10, -20)).to eq(-200)
    end

    it "should return product of -10 and 20 number" do
        expect(get_product(-20, 1)).to eq(-20)
    end

    it "should return product of -10 and -20 number" do
        expect(get_product(-20, -1)).to eq(20)
    end
  end