#this program takes an integer and converts it to roman numerals

number = gets.chomp.to_i

thousands = number / 1000
number = number % 1000

nine_hundreds = number / 900
number = number % 900

five_hundreds = number / 500
number = number % 500

four_hundreds = number / 400
number = number % 400

hundreds = number / 100
number = number % 100

nineties = number / 90
number = number % 90

fifties = number / 50
number = number % 50

forties = number / 40
number = number % 40

tens = number / 10
number = number % 10

nines = number / 9
number = number % 9

fives = number / 5
number = number % 5

fours = number / 4
number = number % 4

ones = number



puts "M" * thousands +
       "CM" * nine_hundreds +
       "D" * five_hundreds +
       "CD" * four_hundreds +
       "C" * hundreds +
       "XC" * nineties +
       "L" * fifties +
       "XL" * forties +
       "X" * tens +
       "IX" * nines +
       "V" * fives +
       "IV" * fours +
       "I" * ones


