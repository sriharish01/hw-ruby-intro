# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  len = arr.length
  largest=0
  second=0
  if len == 0
    return 0
  elsif len == 1
    return arr[0]
  else
    if arr[0] > arr[1]
      largest = arr[0]
      second = arr[1]
    else
      largest = arr[1]
      second = arr[0]
    end
	  
  	for j in 2..len-1
  		if arr[j]>largest
  			second=largest
  			largest=arr[j]
  		elsif arr[j]>second 
  			second=arr[j]
  		end
  	end
	  return (largest+second)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  targetmap = Hash.new
  diff=0
  len=arr.length-1
  for i in 0..len
	  diff=n-arr[i]
  	if targetmap.key?(diff)
  		return true
  	else
  		targetmap.store(arr[i],i)
  	end 
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s=~/\A[^aeiou\W\d_]/i
	  return true
  else
	  return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s=~/[^01]/ or s=~/^$|\s+/
    return false
  end
	decimal=s.to_i(2)
	if decimal%4==0
		return true
	else
		return false
	end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
	def initialize(i,p)
		@isbn=i
		@price=p
		if @isbn.empty? or @price<=0
			raise ArgumentError
		end
	end
	def price_as_string()
		return "$%.2f" % @price
	end
end
