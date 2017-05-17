class PrimeGenerator
  def get_n_primes(n)
    (2..Float::INFINITY).lazy.select{|x| is_prime(x)}.take(n).to_a 
  end

  def is_prime(x)
    x > 1 && (2..Math.sqrt(x).floor).none?{|y| x % y == 0}
  end
end


