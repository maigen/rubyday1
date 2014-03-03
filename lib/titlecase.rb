def titlecase string
  crappys = ['the', 'a', 'and', 'with', 'are']
  string = string.downcase.split(' ').map do |word| 
    if crappys.include?(word)
    word
    else
    word.capitalize
    end
  end
 string[0] = string[0].capitalize
 string.join(' ')

end
