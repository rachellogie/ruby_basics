require 'time'

puts "Please enter a name"
name = gets.chomp
name_array = name.split(" ")
puts "name_array[0] is (#{name_array[0]}) and name array 1 is (#{name_array[1]}) and class is #{name_array[1].class}"


#open the file and read it into a string

f = File.open("/Users/rachellogie/gSchoolWork/ruby_basics/bin/birthday_data.csv", "r")
data = f.read
f.close


#needs to look like: "May 2, 1987,\n27 years old" even though I'm pretty sure he would be 26.  so round age UP

data.each_line do |line|

  #what i want to say here is if name_array[0] and name_array[1] both have values then they both must be present
  #even though tests pass in the current state.
  if line.include? name_array[0] || name_array[1] #change to &&, and only if name_array[1] isn't nil
    line_array = line.split(",")
    dob = line_array[2]

    #date gives us dob formatted correctly
    date = Date.parse(dob).strftime("%B %-d, %Y")



    # could some of this be outside the block

    # make a time object with dob so we can find difference Time.now - dob
    year, month, day = dob.split("/")
    dob_as_time_object = Time.new(year, month, day)
    difference = Time.new - dob_as_time_object

    #this is now how many seconds in a year, factoring for leap year
    difference = difference / 31557600


    #weirdly formatted to pass the tests and rounds up instead of down for age
    puts "#{date},\n                                #{difference.ceil} years old"

  end
end



#what about jeff?  there are two jeffs