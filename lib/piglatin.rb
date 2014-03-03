def pig_latin(word)
  first_consonants = ''
  cons_length = 0
    word.downcase.each_char do |letter| 
      if word[0] == 'y' 
      return word = word.slice(1..-1) + 'yay'
      elsif  /[aeiouy]/.match(letter)
        return word.slice(cons_length..-1) + first_consonants +'ay'
      elsif letter == 'q'
        u = word.index('u')
        first_consonants += word.slice(u-1..u)
        cons_length +=2
      else 
        first_consonants += letter  
        cons_length += 1
      end    
    end
end

def pig_latinize(input)
 input = input.split(' ').map { |word| pig_latin word }
 input.map {|word| remove_punc(word)}.join(' ')
end

def remove_punc(word)
 punc = /\W/.match(word)
 word = word.gsub(/\W/,'')  
 return word + punc.to_s
end
