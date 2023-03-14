require 'gratitude'

RSpec.describe Gratitudes do 
  it "should return a message with all the gratitudes"do 
    gratitude = Gratitudes.new
    gratitude.add("food")
    gratitude.add("family")
    result = gratitude.format
    expect(result).to eq "Be grateful for: food, family"
  end
  it "should return a message with all the gratitudes"do 
  gratitude = Gratitudes.new
  result = gratitude.format
  expect(result).to eq "You forgot to enter with your gratitude word"
end
end