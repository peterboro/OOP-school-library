require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  # Constructor and getters and setters
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
    @rental.person = self
  end

  # returns true if the person is of age 18 and above
  # rubocop:disable Naming/PredicateName
  def is_of_age?
    @age >= 18
  end
  # rubocop:enable Naming/PredicateName

  # returns true if person has permission from parents and is of age
  def can_use_services?
    is_of_age? || @parent_permission
  end

  private :is_of_age?
  public :can_use_services?

  def correct_name
    @name
  end
end
