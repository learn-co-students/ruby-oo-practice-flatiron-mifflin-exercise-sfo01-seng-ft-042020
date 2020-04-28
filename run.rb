require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

employee1 = Employee.new("derp", 69, "mr_anderson")
employee2 = Employee.new("herp", 2938, "mr_cruz")
employee3 = Employee.new("derpina", 420, "mr_cruz")

manager1 = Manager.new("mr_cruz", "buttplug_components", 12)
manager2 = Manager.new("mr_anderson", "fake_nipples", 4)

hire1 = manager1.hire_employee("zebra", 32380)
hire2 = manager2.hire_employee("hitler", 69420)




binding.pry
puts "done"
