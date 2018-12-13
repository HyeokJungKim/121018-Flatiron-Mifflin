class Employee
  attr_accessor :name, :salary, :manager
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
  
  def manager_name
    #self is the instance who called it
    self.manager.name
  end
end
