require 'domr'

describe 'domr' do
  context 'With empty string' do
    it 'Returns 0' do
      domr('', :silent).should eq 0
    end
  end
  context 'With string "example"' do
    it 'Returns 1' do
      domr('example', :silent).should eq 1
    end
  end
  context 'With string "?foo&bar"' do
    it 'Returns 0' do
      domr('?foo&bar', :silent).should eq 0
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
    it 'Does not exit with code 1' do
      system 'domr example'
      $?.exitstatus.should_not eq 1
    end
  end
  context 'With argument "?foo&bar"' do
    it 'Does not exit with code 1' do
      system 'domr "?foo&bar"'
      $?.exitstatus.should_not eq 1
    end
  end
end