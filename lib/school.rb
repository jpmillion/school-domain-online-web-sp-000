# code here!
class School
  
  attr_reader :name, :roster 
  
  def initialize(name)
    @name = name
    @roster = Hash.new {|h, k| h[k] = []}
  end
  
  def add_student(name, grade)
    @roster[grade] << name
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort 
    @roster.map {|k, v| k = v.sort!}
  end
end