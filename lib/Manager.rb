class Manager
  attr_reader :name
  attr_accessor :department, :age
  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
    #self is each instance
  end

  def self.all_departments
    #inside the body of map is how we want to transform it
    @@all.map do |manager|
      manager.department
    end
  end

  def self.all
    @@all
  end

  def employees
    #Get a list of all the employees
    #Go over them and choose the ones who is associated with me(self)
    #return that array
    Employee.all.select do |employee|
      employee.manager == self
    end
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end

  def self.average_age
    ages = @@all.map do |manager|
      manager.age
    end
    ages.reduce(:+).to_f / ages.size
  end
end
