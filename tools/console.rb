require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob = Student.new("Spongebob")
mrs_puff = Instructor.new("Mrs. Puff")
patrick = Student.new("Patrick")

whatilearnedinboatingschoolis = BoatingTest.new(spongebob, "What I learned in boating school", "passed", mrs_puff)
test2 = BoatingTest.new(spongebob, "Test 2", "failed", mrs_puff)
test3 = BoatingTest.new(spongebob, "Test 3", "failed", mrs_puff)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

