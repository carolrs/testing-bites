require 'present'

RSpec.describe Present do
  context "when there is no contents wrapped" do
    it "fails" do
      contents = Present.new
      expect { contents.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
  
  context "when contents already wrapped" do
    it "fails" do
      contents = Present.new
      contents.wrap("shoes")
      expect { contents.wrap("phone") }.to raise_error 
        "A contents has already been wrapped."
    end
  end 

  context "when contents is successfuly wrapped" do
    it "succeeds" do
      contents = Present.new
      expect(contents.wrap("phone")).to eq "phone"
    end
  end
end