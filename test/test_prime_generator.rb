require 'minitest/autorun'

class TestPrimeGenerator < Minitest::Test
  def setup
    require 'prime_generator'
    @gen = PrimeGenerator.new
  end

  def test_10_first_primes
    assert_equal(@gen.get_n_primes(10), [2,3,5,7,11,13,17,19,23,29])
  end

  def test_some_big_prime
    assert(@gen.is_prime(9923))
  end

  def test_100th_prime
    assert_equal(@gen.get_n_primes(100).last, 541)
  end

  def test_1000th_prime
    assert_equal(@gen.get_n_primes(1000).last, 7919)
  end
end
