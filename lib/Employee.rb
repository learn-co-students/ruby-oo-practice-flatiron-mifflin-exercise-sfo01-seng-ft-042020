class Employee

  attr_accessor :name, :salary, :manager
  @@all = []

  def initialize(name, salary)
    @name = name
    @salary = salary 
    @@all << self
  end

  def manager_name 
    manager.name
  end

  def tax_bracket
    min = @salary - 1000
    max = @salary + 1000
    @@all.select {|employee| employee.salary.between?(min, max)}
  end
  
  def self.paid_over(salary_amt)
    self.all.select {|employee| employee.salary > salary_amt}
  end
  
  def self.find_by_department(department)
    self.all.find {|employee| employee.manager.department == department}
  end


  def self.all
    @@all 
  end

end
