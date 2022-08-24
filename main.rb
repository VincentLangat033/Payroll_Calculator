#define class 
class Payroll 
  attr_accessor :name, :salary

  def initialize (name, salary)
    @name = name 
    @salary = salary 
  end 

  def payee
    if @salary > 18000 && @salary <= 30000
      return @salary * 0.1
    elsif @salary >= 30000 && @salary <=35000
      return @salary * 0.25
    elsif @salary >= 35000
      return @salary * 0.3
    else 
      return 0
    end 
  end  

  def nhif 
    if @salary >0 && @salary <= 10000
      return 200
    elsif @salary > 10000 && @salary <= 16000
      return 400
    elsif @salary > 16000 && @salary <= 20000
      return 600 
    elsif @salary > 20000 && @salary <= 23000
      return 750
    elsif @salary > 23000 && @salary <= 270000
      return 900
    elsif @salary >= 270000
      return 1400
    else 
      return 0 
    end 
  end   

  def nssf 
    if @salary > 10000
      return 250
    else 
      return 0
    end 
  end 

  def gross_salary
    @salary
  end 

  def net_salary 
    tax = payee + nssf + nhif
    return (@salary - tax)
  end   
end 
vincent = Payroll.new("Vincent", 60000)

puts " Your Gross Salary is : #{vincent.gross_salary}"
puts " Your Net Salary is : #{vincent.net_salary}"
puts " Your NHIF is : #{vincent.nhif}"
puts " Your NSSF is : #{vincent.nssf}"

