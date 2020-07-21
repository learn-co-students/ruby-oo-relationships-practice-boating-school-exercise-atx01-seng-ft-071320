

class Student

  attr_reader :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def self.find_student(first_name)
    self.all.find {|student| student.first_name == first_name}
  end

  def grade_percentage
    students_tests = BoatingTest.all.select {|test| test.student == self}
    students_passed_tests = students_tests.select {|test| test.status == "passed"}
    students_passed_tests.length.to_f/students_tests.length.to_f*100.round(2)
  end

end
