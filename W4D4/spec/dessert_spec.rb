require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "John") }
  let(:cookies) { Dessert.new("cookies", 8, chef)}
  
  describe "#initialize" do
    it "sets a type" do
      expect(cookies.type).to eq("cookies") do
    end
    it "sets a quantity" do
      expect(cookies.quantity).to eq(8)
    end
    it "starts ingredients as an empty array" do 
      expect(cookies.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("cookies", "egg", chef)}.to raise(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cookies.add_ingredient("egg")
      expect(cookies.ingredients).to include("egg")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      cookies.ingredients = ["egg", "choco", "butta", "flowa"]
      expect(cookies.ingredients).not_to eq(cookies.mix!.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cookies.eat(4)
      expect(cookies.quantity).to eq(4)
    end
    it "raises an error if the amount is greater than the quantity" do
      expect(cookies.eat(65)).to raise(Error)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef John the Great Baker")
      expect(cookies.serve).to eq("Chef John the Great Baker has made 8 cookies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cookies)
      cookies.make_more
    end
  end
end
