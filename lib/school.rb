require 'pry'

class School
attr_accessor :roster, :name, :grade


def initialize(school)
  @school = school
  @roster = {}
end

def roster
  @roster
end

def add_student(name, grade)
  if @roster.has_key?(grade) == false
    @roster[grade] = []
    @roster[grade] << name
  else 
    @roster[grade] << name
  end 
end

def grade(grade)
  @roster[grade]

end

def sort
  @roster.each {|grade, name| name.sort!}
  

end
end

# school = School.new("Bayside High School")
# school.add_student("Zach Morris", 9)