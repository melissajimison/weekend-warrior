class Robot
attr_reader :name

  def initialize
    reset
  end

  def reset
    @name =  letters + numbers
  end
  private
  def letters
    [*('A'..'Z')].sample(2).join
  end

  def numbers
    rand(10).to_s + rand(10).to_s + rand(10).to_s
  end
end
