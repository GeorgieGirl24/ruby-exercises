class Student
  attr_accessor :grade, :count
  LETTER_CONSTANT = ['A', 'B', 'C', 'D', 'F']
  def initialize(grade = 'C', count = 2)
    @grade = grade
    @count = count
  end
  def grade
    LETTER_CONSTANT[self.count]
  end
  def study
    self.count -= 1
    if count < 0
      self.count = 0
    end
  end
  def slack_off
    self.count += 1
    if count > 4
      self.count = 4
    end 
  end
end
