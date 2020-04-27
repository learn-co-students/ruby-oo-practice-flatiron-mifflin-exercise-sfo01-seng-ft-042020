class Manager
  attr_accessor :name, :department, :age
  
  @@all = []
  
  
  def initialize(name, department, age)
    @name = name 
    @department = department 
    @age = age
    @@all << self
  end

  def hire_employee(name, salary)
    employee = Employee.new(name, salary)
    employee.manager = self
  end

  def employees 
    Employee.all.select {|employee| employee.manager == self}
  end

  def self.all_departments 
    @@all.map {|manager| manager.department}
  end 

  def self.all 
    @@all 
  end 

  def self.average_age
    ages = @@all.map {|manager| manager.age}
    average = ages.sum / ages.size
  end
end
