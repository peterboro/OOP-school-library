class Rental
  attr_accessor :date, :person, :book

  def initialize(date)
    @date = date
    @person = person
    person.rentals.push(self)
    @book = book
    book.rentals.push(self)
  end

end