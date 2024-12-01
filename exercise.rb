class Exercise


  def self.marklar(str)

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

  def self.even_fibonacci(nth)

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
