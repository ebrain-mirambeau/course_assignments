#access holiday.rb

require_relative 'holiday'

july4 = Holiday.new( "Independence Day", 4, "July" )
puts ( "here is july4 information!!" )
puts july4
thanksgiving = Holiday.new( "Thanksgiving", 25, "November" )
puts ( "here is thanksgiving information!!" )
day = thanksgiving.day( )
month = thanksgiving.month( )
name = thanksgiving.name( )
puts "#{day} #{month} #{name}"
xmas = Holiday.new( "Christmas Day", 25, "December" )
day = xmas.day( )
month = xmas.month( )
name = xmas.name( )
puts "#{day} #{month} #{name}"

if (xmas.sameDay?( thanksgiving ))
   puts "thanksgiving and xmas fall on the same day!"
else
   puts "thanksgiving and xmas do not fall on the same day!"
end

if (thanksgiving.sameMonth?( xmas ))
  puts "thanksgiving and xmas fall in the same month!"
else
  puts "thanksgiving and xmas do not fall in the same month!"
end
