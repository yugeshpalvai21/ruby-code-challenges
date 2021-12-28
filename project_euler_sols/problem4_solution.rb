# A palindromic number reads the same both ways. The largest palindrome made from the product      # of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def find_largest_palindrom
  num1 = 999
  num2 = 999
  largest_palindrome = false

  while num1 >= 1
    while num2 >= 1
      product = num1 * num2
      if ( product == product.to_s.reverse.to_i )
        if largest_palindrome
          largest_palindrome = product if  (product > largest_palindrome)
        else
          largest_palindrome = product
        end 
        break
      end
      num2 -= 1
    end
    break if num2 >= (num1 -1)
    num2 = 999
    num1 -= 1 
  end

  [largest_palindrome, num1, num2]
end

p find_largest_palindrom