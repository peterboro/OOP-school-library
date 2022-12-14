def grab_person_data
  print 'Do you want to create a student (1) or a teacher (2): '
  choice = gets.chomp.to_i
  print 'Age: '
  age = gets.chomp.to_i
  print 'Name: '
  name = gets.chomp

  [choice, age, name]
end

def grab_permission
  print 'Has parent permission? [Y/N]: '
  permission_input = gets.chomp
  permission = true if permission_input == 'Y'
  permission = false if permission_input == 'N'

  permission
end

def grab_specialization
  print 'Specialization: '
  gets.chomp
end

def grab_book_data
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp

  [title, author]
end

def grab_date
  print 'Date: '
  gets.chomp
end

def grab_book_input
  puts 'Select a book from the above list by number'
  gets.chomp.to_i
end

def grab_person_input
  puts 'Select a person from the above list by number (Not ID): '
  gets.chomp.to_i
end

def grab_person_id
  print 'ID of person: '
  gets.chomp.to_i
end
