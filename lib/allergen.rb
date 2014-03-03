def allergen_score input
  input = input.to_i
  allergen_array = []
  allergens = {"eggs" => 1,
               "peanuts" => 2,
               "shellfish" => 4,
               "strawberries" => 8,
               "tomatoes" => 16,
               "chocolate" => 32,
               "pollen" => 64, 
               "cats" => 128}
  allergens = Hash[allergens.to_a.reverse]
  allergens.each do |allergen, score|
    if input >= score
      allergen_array.push(allergen)
      input -= score
    end 
  end
puts "Here is your allergy array:" 
puts allergen_array
return allergen_array
end

 puts 'What is your allergy score?'

 allergen_score(input = gets.chomp)
