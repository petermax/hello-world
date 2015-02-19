#create map for roman numbers
Roman_map = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
#create map for arabic numbers
Arabic_map = [1000,900,500,400,100,90,50,40,10,9,5,4,1]

#method which convert arabic number to roman number
  def toRoman(arabic_number)
    roman_number= ""                              #initialize variable
    for i in 0..Arabic_map.size - 1               #loop to get every number from map
      while arabic_number >= Arabic_map[i] do     #loop which checking is number bigger than number from map 
        roman_number << Roman_map[i]              #build roman number string
        arabic_number -= Arabic_map[i]            #substract used number from provided number
      end
    end
    return roman_number                           #return roman number string
  end
  
  def toArabic(roman_number)
    arabic_number = 0
    roman_number = roman_number.upcase
    for i in 0..Roman_map.size - 1
    while roman_number.start_with?(Roman_map[i])
        arabic_number += Arabic_map[i]
        roman_number = roman_number[Roman_map[i].size..roman_number.size]
      end
    end
    return arabic_number
  end

#-----------------------------------------------------------------------------------
#                           MAIN PROGRAM
#-----------------------------------------------------------------------------------
  #prompt for number
  puts "Give number from 3999 to 1:"
  #flush buffer
  STDOUT.flush
  #get string from keyboard
  number = gets.chomp
  #use method to convert number; inside convert string to integer
  roman = toRoman(number.to_i)
  #display result
  puts "Arabic number: #{number}, Roman number: #{roman}"
  puts "Give roman number:"
  #flush buffer
  STDOUT.flush
  #get string from keyboard
  roman = gets.chomp
  arabic = toArabic(roman)
  puts "Arabic number: #{arabic}"