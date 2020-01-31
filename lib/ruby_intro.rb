# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  max_val = -99999999
  prev_max_val = max_val
  arr.each_with_index do |val, index|
    if max_val <= val
       prev_max_val = max_val
       max_val = val
    elsif prev_max_val <= val
       prev_max_val = val
    end
  end
  return max_val + prev_max_val
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  i = 0
  while i < arr.length - 1 do
    j = i + 1
    while j < arr.length do
      if arr[i] + arr[j] == n
          return true
      end
      j += 1
    end
    i += 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
     return false
  end
  first_letter = s[0].upcase
  if first_letter.match(/[A-Z]/) == nil || first_letter.match(/[AEIOU]/)#first_letter == "A" || first_letter == "E" || first_letter == "I" || first_letter == "O" || first_letter == "U"
    return false 
  end
  return true
end

def binary_multiple_of_4? s
  if s.match(/^[0-1]*$/) == nil || (s.length < 3 && s.match(/^0+$/) == nil)
     return false
  elsif s[-2..-1] == "00"|| s.match(/^0+$/) != nil
     return true
  else
     return false
  end
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
     if isbn == "" || price <= 0
       raise ArgumentError
     end
     @isbn = isbn
     @price = price
  end
  def isbn=(isbn)
    if isbn == ""
      raise ArgumentError
    end
    @isbn = isbn
  end
  def price=(price)
    if price <= 0
      raise ArgumentError
    end
    @price = price
  end
  def price_as_string()
    "$" + "%.2f" %[price]
  end
  attr_reader :isbn
  attr_reader :price
end
