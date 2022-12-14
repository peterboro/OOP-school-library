require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom: 'None', name: 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
