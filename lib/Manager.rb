class Manager
    attr_reader
    attr_accessor :name, :department, :age
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.average_age
        avg_age = self.all.map do |avg|
            avg.age
        end
        (avg_age.sum.to_f)/(avg_age.length)
    end


    def self.all_departments
        # manag_info = self.all.select do |dept|
        #     dept.department
        # end
        self.all.map do |depart|
            depart.department
        end
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
    end

    def employees
        Employee.all.select do |employee|
            self.name == employee.manager_name
        end
    end

    def self.all
        @@all
    end

end
