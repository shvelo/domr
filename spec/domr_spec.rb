require 'domr'

describe Domr do
  it "Returns true for empty query" do
    Domr.search("").should be_true
  end
  it "Returns true for query 'example'" do
    Domr.search('example').should be_true
  end
end