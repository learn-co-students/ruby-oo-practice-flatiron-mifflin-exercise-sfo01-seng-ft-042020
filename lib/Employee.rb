require 'pry'
class Employee
    @@all = []
    attr_accessor :name, :salary, :manager_name
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary.to_i
        @manager_name = manager_name
        @@all << self
    end

    def self.paid_over(fx_num)
        self.all.select do |emp|
            emp.salary > fx_num
        end
    end

    def self.find_by_department(dept)
        managers = Manager.all.select do |manager|
             dept == manager.department
        end
        first_mang = managers.first
        first_mang.employees.first.name
        # managers.first.employees.first.name
    end

    def tax_bracket
        @@all.select do |emps|
            ((@salary - 1000 <= emps.salary) && (emps.salary <= @salary + 1000) && emps != self)
        end
    end

    def self.all
        @@all
    end
end
