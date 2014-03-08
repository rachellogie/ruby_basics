
def sing(number)

  puts "The number is #{number} with class #{number.class}"

  if number == ""
    puts "I need to know how many bottles to sing!"
  else
    number = number.to_i
    while number >= 0

      if number == 2
        puts "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottle of beer on the wall.\n"
        number -= 1
      elsif number == 1
        puts "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no bottles of beer on the wall.\n"
        number -= 1
      elsif number == 0
        puts "No bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
        break
      else
        puts "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
        number -= 1
      end


    end

  end


end

number = gets.chomp

sing(number)



