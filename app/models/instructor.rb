

class Instructor

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student, test_name)
    test = BoatingTest.all.find {|test| test.student == student && test.test_name == test_name}
    if test != nil
      test.status = "passed"
      test
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end

  def self.fail_student(student, test_name)
    test = BoatingTest.all.find {|test| test.student == student && test.test_name == test_name}
    if test != nil
      test.status = "failed"
      test
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end

end
