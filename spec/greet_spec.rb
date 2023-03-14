require 'greet'

RSpec.describe "greet method" do
  it "return Hello name given" do
    result = greet("Ana")
    expect(result).to eq "Hello Ana"
  end
  it "return Hello name given" do
    result = greet("Maria")
    expect(result).to eq "Hello Maria"
  end
end
