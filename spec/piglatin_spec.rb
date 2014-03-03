require('rspec')
require('piglatin')

describe 'pig_latin' do 
  it 'should move leading consonant to end of word *then* add ay' do
    pig_latin('word').should(eq('ordway'))
  end 
  it 'should just add "ay" to the end of any word that starts with a vowel' do
    pig_latin('eggs').should(eq('eggsay'))
  end
  it 'should remove all the leading consonants before the first vowel' do
  pig_latin('straighten').should(eq('aightenstray'))
  end
  it 'should treat qu as a consonant clusta' do
    pig_latin('square').should(eq('aresquay'))
  end
  it 'should treat qu as a consonant clusta' do
    pig_latin('queen').should(eq('eenquay'))
  end
  it 'should treat y as a vowel unless it is at the beginning of a word' do
    pig_latin('symphony').should(eq('ymphonysay'))
  end
    it 'should treat y as a vowel unless it is at the beginning of a word' do
    pig_latin('yellow').should(eq('ellowyay'))
  end
end

describe 'pig_latinize' do 
  it 'should pig-latinize every word in a sentence' do
    pig_latinize('this is a sentence!').should(eq('isthay isay aay entencesay!'))
  end 
end
describe 'remove_punc' do 
  it 'should move the punctuation to the end' do
    remove_punc('ello!hay').should(eq('ellohay!'))
  end 
end
