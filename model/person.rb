class Person
  @@total_people = 0

  # constructor
  def initialize
    @@total_people += 1
  end

  # a class method
  def self.total_people
    @@total_people
  end
end
