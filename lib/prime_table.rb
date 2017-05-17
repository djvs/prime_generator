class PrimeTable
  attr_accessor :table, :primes

  def initialize(n)
    gen_table(n.to_i)
  end

  def gen_table(n)
    gen = ::PrimeGenerator.new
    @primes = gen.get_n_primes(n)
    @table = {}
    @primes.each do |p1|
      @primes.select{|x| x <= p1}.each do |p2|
        product = p1 * p2
        @table[p2] ||= {}
        @table[p2][p1] = product
      end
    end
    @table
  end

  def print_table
    longest_num_length = @table[@primes.last][@primes.last].to_s.length
    line_template = ["%-#{longest_num_length}s"].cycle(@primes.count + 1 ).to_a.join(' ')
    puts line_template.send(:%, [''] + @primes)
    @primes.each do |p1|
      puts line_template.send(:%, [p1.to_s] + @primes.map{|p2| x,y = [p1,p2].sort; @table[x][y].to_s })
    end
  end
end
