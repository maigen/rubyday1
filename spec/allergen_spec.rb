require('rspec')
require('allergen')

describe('allergen_score') do
  it ('should return eggs if someone has a one allergy score') do
    allergen_score(1).should(eq(['eggs']))
  end
  it ('should return all allergens based on score') do
    allergen_score(6).should(eq(['shellfish', 'peanuts']))
  end
   it ('should return all allergens based on score') do
    allergen_score(24).should(eq(['tomatoes', 'strawberries']))
  end
    it ('should return all allergens based on score') do
    allergen_score(130).should(eq(["cats", 'peanuts']))
  end
end
  
