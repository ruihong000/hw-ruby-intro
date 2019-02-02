# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.collect{|x| s = s+x}
  return s
end

def max_2_sum arr

  arr.sort!
  return arr.fetch(-1) { |index| 0 }+arr.fetch(-2) { |index| 0 }
end

def sum_to_n? arr, n
  l1 = 0
  l2 = 0
  arr.each do |x| 
    l2 = 0
    arr.each do |y|  
      if x+y == n and l1 != l2
        return true
      end
      l2+=1
    end
  l1+=1
  end
  return false
end

# Part 2

def hello(name)
  'Hello, '+name
end

def starts_with_consonant? s
  if  (s =~ /\A[qwrtypsdfghjklzxcvbnm]/i) != nil
   return true
  
  else
    return false
  end
end


def binary_multiple_of_4? s
  if s =="0"
    return true
  end
  a = s.to_f
  
  if a == 0
    return false
  end
  if a%4 == 0
    return true
  else
    return false
  end
end

# Part 3
class BookInStock
  def initialize(startingisbn,startingprice)
    @isbn = startingisbn
    @price = startingprice
    begin 
      if @price <= 0 or @isbn == ""
        raise ArgumentError
      end
    end
  end
  def isbn
    @isbn
  end
  def isbn= x
    @isbn=x
  end
  def price
    @price
  end
  def price= x
    @price = x
  end
  def price_as_string
    mac = price.to_f.to_s.split(pattern='.')
    if mac[1].length <2
      return '$'+price.to_f.to_s+'0'
    end
    return '$'+price.to_f.to_s
  end

end
