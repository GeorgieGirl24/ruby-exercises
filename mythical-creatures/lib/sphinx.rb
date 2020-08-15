class Sphinx
  attr_accessor :name, 

  ROMAN_NUMERALS = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}

  def initialize(name)
    @name = name
  end

  def sphinx_challenge(number)
    # require 'pry'; binding.pry
    roman_numeral = ""
    while number >= 1000
      roman_numeral += "M"
      number -= 1000
    end
    while number >= 900
      roman_numeral += "CM"
      number -= 900
    end
    while number >= 500
      roman_numeral += "D"
      number -= 500
    end
    while number >= 400
      roman_numeral += "CD"
      number -= 400
    end
    while number >= 100
      roman_numeral += "C"
      number -= 100
    end
    while number >= 90
      roman_numeral += "XC"
      number -= 90
    end
    while number >= 50
      roman_numeral += "L"
      number -= 50
    end
    while number >= 40
      roman_numeral += "XL"
      number -= 40
    end
    while number >= 10
      roman_numeral += "X"
      number -= 10
    end
    while number >= 9
      roman_numeral += "IX"
      number -= 9
    end
    while number >= 5
      roman_numeral += "V"
      number -= 5
    end
    while number >= 4
      roman_numeral += "IV"
      number -= 4
    end
    while number >= 1
      roman_numeral += "I"
      number -= 1
    end
    p roman_numeral
  end

  def roman_numeral(number)
    the_roman_numeral = ""
    while number >= 1000
      the_roman_numeral += "M"
      number -= 1000
    end
    while number >= 900
      the_roman_numeral += "CM"
      number -= 900
    end
    while number >= 500
      the_roman_numeral += "D"
      number -= 500
    end
    while number >= 400
      the_roman_numeral += "CD"
      number -= 400
    end
    while number >= 100
      the_roman_numeral += "C"
      number -= 100
    end
    while number >= 90
      the_roman_numeral += "XC"
      number -= 90
    end
    while number >= 50
      the_roman_numeral += "L"
      number -= 50
    end
    while number >= 40
      the_roman_numeral += "XL"
      number -= 40
    end
    while number >= 10
      the_roman_numeral += "X"
      number -= 10
    end
    while number >= 9
      the_roman_numeral += "IX"
      number -= 9
    end
    while number >= 5
      the_roman_numeral += "V"
      number -= 5
    end
    while number >= 4
      the_roman_numeral += "IV"
      number -= 4
    end
    while number >= 1
      the_roman_numeral += "I"
      number -= 1
    end
    p the_roman_numeral
  end
end
