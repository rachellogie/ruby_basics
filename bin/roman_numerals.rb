#this program takes an integer and converts it to roman numerals

number = gets.chomp.to_i

puts "number is #{number}"

=begin
1 ... I
2 ... II
3 ... III
4 ... IV
5 ... V
6 ... VI
7 ... VII
8 ... VIII
9 ... IX

=end

fives = number / 5
ones = number % 5

puts "V" * fives + "I" * ones

