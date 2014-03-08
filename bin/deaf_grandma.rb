say = gets.chomp

if say != say.upcase
  puts "HUH?! SPEAK UP SONNY!"
else
  year = rand(1930..1950)
  puts "NO, NOT SINCE #{year}!"
end