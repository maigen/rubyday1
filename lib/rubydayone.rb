def fizz_buzz number 
  string = ''
  number += 1
  number.times do |n|
    if n % 3 == 0 && n % 5 == 0
      string += 'fizzbuzz '
    elsif n % 3 == 0
      string += 'fizz '
    elsif n % 5 == 0
      string += 'buzz '
    else
     string += n.to_s + " "
   end
  end 
return string[9..-2]
end
