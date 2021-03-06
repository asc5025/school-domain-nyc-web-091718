require 'pry'

class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_students = {}
    @roster.each do |grade, students|
      sorted_students[grade] = students.sort
    end
    sorted_students
  end

end


# roster is empty Hash upon initialization
# hash contains keys of grade levels
# value of each key will be an array

#binding.pry
