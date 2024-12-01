class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    str.split.map do |word|
      if word.gsub(/[^a-zA-Z]/, '').length > 4
        if word[0] =~ /[A-Z]/
          replacement = "Marklar"
        else
          replacement = "marklar"
        end
        word.match?(/[[:punct:]]$/) ? replacement + word[-1] : replacement
      else
        word
      end
    end.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    a, b = 1, 1
    sum = 0
    count = 1
  
    while count <= nth
      sum += a if a.even? 
      a, b = b, a + b     
      count += 1        
    end

    sum
    
  end

end
