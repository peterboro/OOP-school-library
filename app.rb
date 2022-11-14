require_relative 'book'
require_relative 'teacher'
require_relative 'student'
require_relative 'rental'
require_relative 'user_inputs'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_all_books
    books.each_with_index { |book, index| puts "#{index}) Title: '#{book.title}', Author: #{book.author}" }
  end

  def list_all_people
    people.each_with_index { |person, index| puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end

  def create_person
    choice, age, name = grab_person_data
    case choice
    when 1
      permission = grab_permission
      student = Student.new(age, name: name, parent_permission: permission)
      people << student
      puts 'Person created successfully'
    when 2
      specialization = grab_specialization
      teacher = Teacher.new(age, specialization: specialization, name: name)
      people << teacher
      puts 'Person created successfully'
    else
      puts 'Invalid option'
    end
  end

  def create_book
    title, author = grab_book_data
    book = Book.new(title, author)
    @books << book
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    list_all_books
    book = books[grab_book_input]
    puts 'Select a person from the following list by number'
    list_all_people
    person = people[grab_person_input]
    puts 'Date:'
    date = grab_date
    rental = Rental.new(date, book, person)
    @rentals << rental
    puts 'Rental created successfully'
  end

  def list_all_rentals_by_id
    id = grab_person_id
    puts 'Rentals:'
    rentals.each do |rental|
      puts "Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}" if rental.person.id == id
    end
  end
end
