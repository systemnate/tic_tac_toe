require "spec_helper"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to eq(true)
    end

    it "returns false if some of the Array elements are not empty" do
      expect(["", 1, ""].all_empty?).to eq(false)
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to eq(true)
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["A", "A", "A"].all_same?).to eq(true)
    end

    it "returns false if some elements of the Array are different" do
      expect(["A", "", "A"].all_same?).to eq(false)
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to eq(true)
    end
  end
  
  context "#any_empty?" do
    it "returns true if any of the elements in the Array are empty" do
      expect(["A", "", "A"].any_empty?).to eq(true)
    end

    it "returns false if none of the elementsin the Array are empty" do
      expect(["A", "A", "A"].any_empty?).to eq(false)
    end

    it "returns false for an empty Array" do
      expect([].any_empty?).to eq(false)
    end
  end

  context "#none_empty?" do
    it "returns true if none of the elements in the Array are empty" do
      expect(["A", "A", "A"].none_empty?).to eq(true)
    end
    
    it "returns false if some of the elements in the Array are empty" do
      expect(["A", "", "A"].none_empty?).to eq(false)
    end

    it "returns true for an empty Array" do
      expect([].none_empty?).to eq(true)
    end
  end
end
