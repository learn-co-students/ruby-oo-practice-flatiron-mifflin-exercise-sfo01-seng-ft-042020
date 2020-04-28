class Manager
    attr_reader :name, :department, :age
    @@ages = []
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
        # @count += 1
        @@ages << age
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select { |s| s.manager == self }
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end
    
    def self.all_departments
        arr = @@all.select { |s| s }
        array = []
        i = 0
        while i < arr.length do 
            num = arr[i]
            array << num.department
            i += 1
        end
        array
    end

    def self.average_age
        num = @@ages.sum / @@ages.length
        return num.to_f
    end


end

#####################################
#   * `Manager.average_age`
#     * returns a `Float` that is the average age of all the managers
#   * `Manager.all_departments`
#     * returns an `Array` of all the department names that every manager oversees

#   * `Manager#hire_employee`
#     * takes a `String` argument and a `Fixnum` argument of an employee's name and
#      the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees

#   * `Manager#name`
#     * returns a `String` that is the manager's name

#   * `Manager#department`
#     * returns a `String` that is the department that the manager oversees

#   * `Manager#age`
#     * returns a `Fixnum` that is the age of the manager

#   * `Manager.all`
#     * returns an `Array` of all the managers

#   * `Manager#employees`
#     * returns an `Array` of all the employees that the manager oversees





