require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'
#Test your code here
# class Manager  initialize(name, department, age)
steve = Manager.new("steve", "IT", 41)
dan = Manager.new("dan", "food", 35)

# class Employee initialize(name, salary, manager_name)
mark = Employee.new("mark", 5200, steve)
dona = Employee.new("Dona", 400, steve)

ethan = Employee.new("ethan", 450, dan)
april = Employee.new("April", 500, dan)




binding.pry
puts "done"
