class Person
  attr_accessor :id, :name, :age

  # Constructor and getters and setters
  def initialize(age, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # returns true if the person is of age 18 and above
  def is_of_age?
    @age >= 18
  end

  # returns true if person has permission from parents and is of age
  def can_use_services?
    is_of_age? || @parent_permission
  end

  private :is_of_age?
  public :can_use_services?
end
