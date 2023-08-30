# frozen_string_literal: true

def fibonacci_recursion(n)

  if n.zero?
    0
  elsif n == 1
    1
  else
    fibonacci_recursion(n - 1) + fibonacci_recursion(n - 2)
  end
end

def fibonacci_recursive(n)
  sequence = []
  (0..n).each do |i|
    sequence << fibonacci_recursion(i)
  end
  sequence
end

def fibonacci(n)

  current = 1
  previous = 0
  result = []

  while current <= n
    result << current
    next_num = current + previous
    previous = current
    current = next_num
    puts 'Current after While', current
  end
  result
end

num = 8
fibonacci = fibonacci_recursive(num)
puts fibonacci.inspect


