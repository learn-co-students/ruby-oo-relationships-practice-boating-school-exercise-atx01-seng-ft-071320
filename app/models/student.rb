require 'pry'

class Student
    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(name)
        self.all.find do |student|
            student.first_name == name
        end
    end

    def grade_percentage
        tests_taken = BoatingTest.all.select do |test|
            test.student == self
        end.count.to_f
        tests_passed = BoatingTest.all.select do |test|
            test.student == self && test.status == "passed"
        end.count.to_f
        (tests_passed/tests_taken * 100).round(2)
    end
end
