require 'domr'

describe Domr do
  describe '#search' do
    context 'With empty string' do
      it 'Returns true' do
        Domr.search('').should be_true
      end
    end
    context 'With string "example"' do
      it 'Returns true' do
        Domr.search('example').should be_true
      end
    end
  end
end

describe 'Script domr' do
  context 'Without arguments' do
    it 'Exits with code 0' do
      system 'domr'
      $?.exitstatus.should eql 0
    end
  end
  context 'With argument "example"' do
    it 'Exits with code 0' do
      system 'domr example'
      $?.exitstatus.should eql 0
    end
  end
end
