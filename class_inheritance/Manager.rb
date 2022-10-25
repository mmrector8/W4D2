require_relative "Employee"
require "byebug"
class Manager < Employee
    attr_reader :sub_employees
    attr_reader :name, :title, :boss, :salary

    def initialize(name, title, salary, boss=nil)
        super
        @sub_employees = []
    end

    def add_sub_employees(employee)
   
        if self.name == employee.boss.name
            @sub_employees << employee
        end
    end

    def bonus(multiplier)
        sum = 0
        queue = [@sub_employees[0]]
        
        until queue.empty?
            # debugger

            @sub_employees.each do |employee|
                if employee.is_a?(Manager)
                        queue << employee.sub_employees
                        queue.flatten
                        sum += employee.salary
                        
                else
                        sum += employee.salary
                        
                end
                queue.shift
            end
        end
        sum * multiplier
    end

    
end