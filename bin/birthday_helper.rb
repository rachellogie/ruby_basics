require 'time'

puts "Please enter a name"
name = gets.chomp

#open the file and read it into a string

f = File.open("/Users/rachellogie/gSchoolWork/ruby_basics/bin/birthday_data.csv", "r")
data = f.read
f.close


#needs to look like: "May 2, 1987,\n27 years old" even though I'm pretty sure he would be 26.  so round

data.each_line do |line|
  if line.include? name
    line_array = line.split(",")
    dob = line_array[2]
    #date gives us dob formatted correctly

    #need to make this drop the 0 from 1-10
    date = Date.parse(dob).strftime("%B %-d, %Y")



    # could some of this be outside the block

    #make a time object with dob so we can find difference Time.now - dob
    year, month, day = dob.split("/")
    dob_as_time_object = Time.new(year, month, day)
    difference = Time.new - dob_as_time_object
    difference = difference / 31556940
    puts "#{date},\n                                #{difference.round} years old"

  end
end



#what about jeff?  there are two jeffs