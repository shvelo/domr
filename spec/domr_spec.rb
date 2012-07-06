require 'domr'

describe Domr do
  describe "#search" do
    context "With empty string" do
      it "Returns true" do
        Domr.search('').should be_true
      end
    end
    context "With string 'example'" do
      it "Returns true" do
        Domr.search('example').should be_true
      end
    end
  end
end