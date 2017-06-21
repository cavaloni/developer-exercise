class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    sentence = ''
    word = ''
    strEnd = str.length - 1
    
    for i in 0...str.length
      char = str[i]
      if char == ' ' || i == strEnd
        
        if i == strEnd
          word = word + char
        end
        
        if word.length > 4
          word_copy = word.dup
          lastChar = ''
          endChar = word[word.length - 1]
          
          if endChar.match(/^[[:punct:]]$/)
            lastChar = endChar
          end
          
          if i != strEnd
            lastChar = lastChar + ' '
          end
          
          if word[0] == word_copy[0].upcase
            sentence = sentence + 'Marklar' + lastChar
            word = ''
          else
            sentence = sentence + 'marklar' + lastChar
            word = ''
          end
        else
          if i != strEnd
            sentence = sentence + word + ' ' 
          else
            sentence = sentence + word
          end
          word = ''
        end
      else
        word = word + char
      end
    end

    return sentence
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    if nth == 2
      return nth
    elsif nth < 2
      return 0
    end
    
    i = 3
    firstIndex = 1
    secondIndex = 2
    answer = 2

    while i < nth do
      current = firstIndex + secondIndex
      if current.even?
        answer +=current
      end
      firstIndex = secondIndex
      secondIndex = current
      i +=1
    end
  
    return answer
  end

end
