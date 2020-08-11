class Retirement
  def calculate(age, retirement_age)
    difference = retirement_age - age
    if age < 0
      "Error. Age cannot be negative."
    elsif retirement_age < 0
      "Error. Retirement age cannot be negative."  
    else
      "You have #{difference} years left until you can retire. It is 2015, so you can retire in #{2015 + difference}."
    end



  end
end
