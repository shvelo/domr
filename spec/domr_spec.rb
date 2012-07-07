require 'domr'

describe 'domr' do
  context 'With empty string' do
    it 'Returns 4' do
      domr('').should eq 4
    end
  end
  context 'With string "example"' do
    it 'Returns 10' do
      domr('example').should eq 10
    end
  end
  context 'With string "?something&something"' do
    it 'Returns 0' do
      domr('?foo&bar').should eq 0
    end
  end
end

describe 'Script domr' do
  context 'Without arguments' do
    it 'Does not exit with code 1' do
      system 'domr'
      $?.exitstatus.should_not eq 1
    end
  end
  context 'With argument "example"' do
    it 'EDoes not exit with code 1' do
      system 'domr example'
      $?.exitstatus.should_not eq 1
    end
  end

end
