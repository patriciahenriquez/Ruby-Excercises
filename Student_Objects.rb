# create arrays of student data 
# get average score for each student 
# create a search function
require 'pry'

class Student 

	attr_accessor :scores 
	attr_accessor :first_name 

	def initialize (scores, first_name)
		@scores = scores
		@first_name = first_name 
	end 

	def average 
		sum = scores.reduce {|firstvalue, x| firstvalue +x } 
		average = sum/scores.length
		average 
	end 

	def letter_grade 
			if average >= 90
			return "A"
			elsif (80..89).cover?(average)
			return "B"
			elsif (70..79).cover?(average)
			return "C"
			elsif (60..69).cover?(average)
				return "D"
			else 
				"F"
			end
	end
		
end 


def linear_search (data, first_name)
	data.index {|student| student.first_name == first_name}
end	

alex  = Student.new([100, 100, 100, 0, 100], "Alex")
patricia = Student.new([90, 90, 90, 0, 90], "Patricia")
liliana = Student.new([80, 80, 80, 0, 80], "Liliana")
sandra = Student.new([80, 80, 80, 0, 80], "Sandra")
kara = Student.new([70, 70, 70, 0, 70], "Kara")


students = [alex, patricia, liliana, sandra, kara]

p students[0].first_name 
p students[0].scores.length
p students[0].scores[0]
p students[0].scores[3]

# binding.pry

puts alex.average


p students[0].average
p students[1].average

p students[0].letter_grade

# if linear_search == false 
# 	return -1 
# end 


p linear_search(students, "Alex")
