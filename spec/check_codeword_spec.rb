require 'check_codeword'

RSpec.describe "check_codeword method" do

  it "check if codeword is equal to horse" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "checks if codeword first chars is equal to 'h' 
  and codeword last is equal to 'e'" do
    result = check_codeword('house')
    expect(result).to eq "Close, but nope."
  end

  it "when there is no match" do
    result = check_codeword ("dog")
    expect(result).to eq "WRONG!"
  end
  
end
