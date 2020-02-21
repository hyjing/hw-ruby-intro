# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  else
    count = 0
    arr.each { |x|
      count += x
    }
    return count
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    first = arr[0] > arr[1] ? arr[0] : arr[1]
    second = arr[0] > arr[1] ? arr[1] : arr[0]
    last = arr.length - 1
    for i in 2..last
      if arr[i] > first
        second = first
        first = arr[i]
      elsif arr[i] > second
        second = arr[i]
      end
    end
    return first + second
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  map = {}
  arr.each { |x|
    if map[n - x] == 1
      return true
    end
    map[x] = 1
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /[aeiouAEIOU*]/.match(s[0])
    return false
  elsif /0-9*/.match(s[0])
    return false
  elsif /[^a-zA-Z0-9.*]/.match(s)
    return false
  elsif /^$/.match(s)
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^[-+]?[0-9]+$/.match(s)
    if s.to_i % 4 == 0
      return true
    end
    return false
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = Float(price)
  end
  
  def price_as_string
    return "$%.2f" % (@price)
  end
end
