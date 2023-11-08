class Person
  attr_reader :name, :pills

  def initialize(name)
    @name = name
    @pills = 0
  end

  def give_pill
    @pills += 1
  end
end