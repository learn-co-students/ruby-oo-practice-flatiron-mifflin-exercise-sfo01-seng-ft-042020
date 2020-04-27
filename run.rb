require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
man_a = Manager.new("thea", "HR", 23)
man_b = Manager.new("bob", "IT", 41)
man_c = Manager.new("joe", "exec", 55)
man_d = Manager.new("sarah", "exec", 55)
emp_a = Employee.new("max", 15)
emp_b = Employee.new("jim", 34)
emp_c = Employee.new("sally", 32)
man_a.hire_employee("alan", 30000)
man_a.hire_employee("karie", 50000)

binding.pry
puts "done"
