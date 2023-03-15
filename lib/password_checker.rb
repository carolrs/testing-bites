class PasswordChecker
  def check(password)
    if password.is_a? Integer
      fail "Invalid password, must use characters."
    end
    if password.length >= 8
      return true
    else
      fail "Invalid password, must be 8+ characters."
    end
  end
end