require 'test/unit'
require 'domr'

class DomrTest < Test::Unit::TestCase
  def test_query_example
    assert_equal true,
      Domr.search("example")
  end

  def test_query_empty
    assert_equal true,
      Domr.search("")
  end
end