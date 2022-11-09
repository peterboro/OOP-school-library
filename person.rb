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

  def add_rental(date, book)
    Rental.new(date, book, self)
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

  person = Person.new(22, 'maximilianus')
  person.correct_name
  capitalized_person = CapitalizeDecorator.new(person)
  capitalized_person.correct_name
  capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
  capitalized_trimmed_person.correct_name
end
