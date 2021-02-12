printf("Corsair Hotel Calculator\n")
printf("How many nights is your stay: " )
nights_stay = gets.chomp.to_i
continue = "y"
number_of_weekend_nights = 0


total_amount = 0

while continue == "y" || continue == "Y"
	if nights_stay < 0
		printf("Sorry Charlie!\n")
	else
		printf("Are any of these nights weekend nights (y/n): ")
		weekend_nights_question = gets.chomp
		while weekend_nights_question != "y" && weekend_nights_question != "Y" && weekend_nights_question != "n" && weekend_nights_question != "N"
			printf("Are any of these nights weekend nights (y/n): ")
			weekend_nights_question = gets.chomp
		end
		if weekend_nights_question == "n" || weekend_nights_question == "N"
			total_amount += 150 * nights_stay
		else
			if weekend_nights_question == "y" || weekend_nights_question == "Y"
				printf("How many of these nights are weekend nights: ")
				number_of_weekend_nights = gets.chomp.to_i
				if number_of_weekend_nights < 0
					printf("Sorry Charlie!\n")
				else
					total_amount += (200 * number_of_weekend_nights) + (150 * (nights_stay - number_of_weekend_nights))
				end
			end
		end
		if number_of_weekend_nights >= 0
			printf("%i night(s) @ $150\n%i night(s) @ $200\n", 
			nights_stay - number_of_weekend_nights, number_of_weekend_nights)
			printf("Suite desired (y/n): ")
			suite_desired = gets.chomp
			while suite_desired != "y" && suite_desired != "Y" && suite_desired != "n" && suite_desired != "N"
				printf("Suite desired (y/n): ")
				suite_desired = gets.chomp
			end
			if suite_desired == "y" || suite_desired == "Y"
				if number_of_weekend_nights == 0
					printf("Suite upgrade $%i per night\n", 30)
					total_amount += 30 * nights_stay
				elsif number_of_weekend_nights < nights_stay
					printf("Suite upgrade $%i for weeknights and $%i for weekends\n", 30, 40)
					total_amount += (40 * number_of_weekend_nights) + (30 * (nights_stay - number_of_weekend_nights))
				else
					printf("Suite upgrade $%i per night\n", 40)
					total_amount += 40 * number_of_weekend_nights
				end
			end	
			printf("Is this a resort location (y/n): ")
			resort_location = gets.chomp
			while resort_location != "y" && resort_location != "Y" && resort_location != "n" && resort_location != "N"
				printf("Is this a resort location (y/n): ")
				resort_location = gets.chomp
			end
			if resort_location == "y" || resort_location == "Y"
				if number_of_weekend_nights == 0
					printf("Resort Fee $%i per night\n", 45)
					total_amount += 45 * nights_stay
				elsif number_of_weekend_nights < nights_stay
					printf("Resort Fee $%i for weeknights and $%i for weekends\n", 45, 60)
					total_amount += (60 * number_of_weekend_nights) + (45 * (nights_stay - number_of_weekend_nights))
				else
					printf("Resort Fee $%i per night\n", 60)
					total_amount += 60 * number_of_weekend_nights
				end
			end		
			printf("Your hotel stay will cost $%i.  Enjoy your trip!\n", total_amount)
		end
	end
	printf("Continue (y/n): ")
	continue = gets.chomp
	while continue != "y" && continue != "Y" && continue != "n" && continue != "N"
		printf("Continue (y/n): ")
		continue = gets.chomp
	end
	#print continue
	if continue == "y" || continue == "Y"
		number_of_weekend_nights = 0
		total_amount = 0
		printf("Corsair Hotel Calculator\n")
		printf("How many nights is your stay: " )
		nights_stay = gets.chomp.to_i
	else
		break
	end
end