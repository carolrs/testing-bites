require 'password_checker'

RSpec.describe PasswordChecker do
  context "when user enter less than 8 characters" do
    it "fails" do
      password = PasswordChecker.new
      expect { password.check("pass") }.to raise_error 
      "Invalid password, must be 8+ characters."
    end
  end

  context "when user enter numbers" do
    it "fails" do
      password = PasswordChecker.new
      expect { password.check(1234567) }.to raise_error 
      "Invalid password, must use characters."
    end
  end

  context "when user successfuly log in" do
    it "succeeds" do
      password = PasswordChecker.new
      expect(password.check ("password!")).to eq true
    end
  end
end