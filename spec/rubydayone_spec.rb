require('rspec')
require('titlecase')

describe('titlecase') do
  it ('capitalizes the first letter of every word') do
    titlecase('hello world').should(eq('Hello World'))
  end
   it ('does not capitalize the first letter of the crappy words') do
    titlecase('gone with the wind').should(eq('Gone with the Wind'))
  end
  it ('always capitalizes the first letter of the first word') do
    titlecase('the hills are alive').should(eq('The Hills are Alive'))
  end
    it ('handles people abusing the caps lock key') do
    titlecase('WHAT ABOUT BOB?').should(eq('What About Bob?'))
  end
end
