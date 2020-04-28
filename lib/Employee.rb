class Employee
    attr_accessor :name, :manager
    attr_reader :salary
    @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end
    def self.all
        @@all
    end

    def self.paid_over(num)
        self.all.select { |s| s.salary > num}
    end

    def self.find_by_department(str)
        self.all.find do |s|
            managers_name = s.manager
            Manager.all.select do |t|
                managers_name.department == str
                return s
            end
        end
    end

    def tax_bracket
        arr = []
        @@all.select do |s|
            if s.salary > self.salary + 1000 || s.salary < self.salary - 1000
                arr << s
            end
        end
        arr
    end

end
# **`Employee`**

#   * `Employee#name`
#     * returns a `String` that is the employee's name

#   * `Employee#salary`
#     * returns a `Fixnum` that is the employee's salary

#   * `Employee#manager_name`
#     * returns a `String` that is the name of their manager

#   * `Employee.all`
#     * returns an `Array` of all the employees

#   * `Employee.paid_over`
#     * takes a `Fixnum` argument and returns an `Array` of all the employees whose
#      salaries are over that amount

#   * `Employee.find_by_department`
#     * takes a `String` argument that is the name of a department and returns the
#      first employee whose manager is working in that department

#   * `Employee#tax_bracket`
#     * returns an `Array` of all the employees whose salaries are within $1000 (± 1000)
#      of the employee who invoked the method

###############################################################