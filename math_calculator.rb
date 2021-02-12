
def enter_numbers_in_array(numArray)
	printf "Enter numbers: "
	#numbersArray = Array[]
	#numbersArray.push

	input = gets.split
	input.each do |number|
		numArray << number.to_i
	end
	#puts numbersArray
	return numArray
end

def calculate_average(numArray)
	runningTotal = 0
	numArray = numArray.sort
	numArray.each do |number|
		runningTotal += number
	end
 
	return runningTotal/numArray.length.to_f
end

def print_average(numArray)
	runningTotal = 0
	numArray = numArray.sort
	numArray.each do |number|
		runningTotal += number
	end
	printf "Average = %0.2f\n", runningTotal/numArray.length.to_f
end

def calculate_median(numArray)
	#runningTotal = 0
	numArray = numArray.sort
	if numArray.length % 2.to_f == 0
		#puts numArray.length/2.floor
		printf "Median = %0.2f\n", (numArray[numArray.length/2.floor] + numArray[(numArray.length/2) - 1])/2.to_f
	else
		printf "Median = %0.2f\n", numArray[(numArray.length/2)]
	end
end

def calculate_standard_deviation(numArray)
	#puts numArray
	runningTotal = 0
	average = calculate_average(numArray)
	numArray.each do |number|
		runningTotal += (number - average)*(number - average)
	end	
	#for i in 1..numArray.length
	#	runningTotal += (numArray[i] - average)*(numArray[i] - average)
	#end
	printf "Sandard Deviation = %0.2f\n", Math::sqrt(runningTotal/numArray.length.to_f)
end

def clear(numArray)
	return Array[]
end

#main
printf "Math Calculator\n"
printf "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
input = gets.chomp
array = []
if input != "N"
	raise "Cannot operate calculator without input"
end

while input != "Q"
	if input == "N"
		array = enter_numbers_in_array(array)
		printf "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
		input = gets.chomp
	elsif input == "A"
		print_average(array)
		printf "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
		input = gets.chomp
	elsif input == "M"
		calculate_median(array)
		printf "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
		input = gets.chomp
	elsif input == "S"
		calculate_standard_deviation(array)
		printf "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
		input = gets.chomp
	elsif input == "C"
		array = clear(array)
		printf "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
		input = gets.chomp
	else
		printf"[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
		input = gets.chomp
	end
end
#numbersArray = enter_numbers_in_array()
#printf "%0.2f\n", calculate_average(numbersArray)
#printf "%0.2f\n", calculate_median(numbersArray)
#printf "%0.2f\n", calculate_standard_deviation(numbersArray)	
	
#numbersArray.each do |number|
#	printf "%i ", number
#end