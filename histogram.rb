def print_stars(digit)
	for i in 1..digit
		printf "%s", "*"
	end
end

#main
puts "Enter Data: "
input = gets.chomp
chars = input.split("")
letterCount = Hash.new()
chars.each do |char|
	if letterCount.key?(char) == false
		letterCount[char] = 1
	else
		letterCount[char] += 1
	end
end
sortedKeys = letterCount.keys.sort

sortedKeys.each do |key|
	printf "%s - %i - ", key.upcase, letterCount[key]
	print_stars(letterCount[key])
	printf "\n"
end	

