require 'minitest/autorun'

class TestPrimeTable < Minitest::Test
  def setup
    require 'prime_table'
    @pt = PrimeTable.new(10)
  end

  def test_prime_list
    assert_equal([2,3,5,7,11,13,17,19,23,29], @pt.primes)
  end
    
  def test_hash_generation
    assert_equal(4,@pt.table[2][2])
    assert_equal(121,@pt.table[11][11])
  end
end
