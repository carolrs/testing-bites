require 'string_builder'

RSpec.describe StringBuilder do
  it "should return a string containing the sentence: Hello Word"do
    str = StringBuilder.new
    str.add("Hello Word")
    result = str.output
    expect(result).to eq "Hello Word"
  end

  it "should return a the size of the string"do
    str = StringBuilder.new
    str.add("London")
    result = str.size
    expect(result).to eq 6
  end

  it "should return a the size of the string"do
    str = StringBuilder.new
    result = str.output
    expect(result).to eq ""
  end
  
end