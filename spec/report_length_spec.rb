require 'report_length'

RSpec.describe "report_length method" do 

  it "should return 12 when the  sentence is Good Morning" do 
    result = report_length("Good Morning")
    expect(result).to eq "This string was 12 characters long."
  end

  it "should return 5 when the  word is table" do 
    result = report_length("table")
    expect(result).to eq "This string was 5 characters long."
  end

  it "should return 0 when the string is empty" do 
    result = report_length("")
    expect(result).to eq "This string was 0 characters long."
  end
end