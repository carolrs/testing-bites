class Gratitudes
  def initialize
    @gratitudes = []
  end

  def add(gratitude)
    @gratitudes.push(gratitude)
  end

  def format
    if @gratitudes.empty?
      return "You forgot to enter with your gratitude word"
    end
    
    formatted = "Be grateful for: "
    formatted += @gratitudes.join(", ")
    return formatted
  end
end