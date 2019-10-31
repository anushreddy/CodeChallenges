def primes(n)
  split_primes = Array.new
  if n == 1 
    puts 0
  else
    (2...n).each do |num|
      split_primes << num if is_prime?(num) #calling is_prime method to check if a number is prime
    end
  end
  # print split_primes
  product_primes(split_primes, n) #passing all the values to find the product of primes
end

def product_primes(arr, n)
  max_array = []
  for i in (0...arr.length) do
    (0...arr.length).reverse_each do |j|
      first = arr[i].to_i
      last = arr[j].to_i

      if (first + last == n)
        max_array << (first * last)
      end
    end
  end
  puts max_array.max
end

def is_prime?(n)
  (2...n).each do |d|
    return false if n % d == 0
  end 
  true
end

puts primes(4) 
