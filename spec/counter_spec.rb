require 'counter'

RSpec.describe Counter do

  it "should return the report for 1 add" do
    counter = Counter.new
    counter.add(1)
    result = counter.report
    expect(result).to eq "Counted to 1 so far."
  end

  it "should return the sum of the added numbers" do
    counter = Counter.new
    counter.add(2)
    result = counter.add(2)
    expect(result).to eq 4
  end
end