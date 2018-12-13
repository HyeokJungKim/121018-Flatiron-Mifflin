require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

jeff = Manager.new("Jeff", "Amazon", 18)

michael = Manager.new("Michael", "Paper", 40)
rhu = Employee.new("Rhu", 1000, michael)
tara = Employee.new("Tara", 1800, jeff)
benson = Employee.new("Benson", 2000, jeff)
#Test your code here


Pry.start
puts "done"
