def init()
	puts "CS83R Username/Password Validator"
end

def get_username()
	puts "Username:"
	username = gets.chomp
	return username
end

def get_password()
	puts "Password:"
	password = gets.chomp
	return password
end

def check_string_length(input, passOrUser, counter)
	if input.length < 8
		printf "%s length must be at least 8 characters\n", passOrUser
		return counter += 1
	else 
		return counter
	end
end

def contains_only_alphanumeric_characaters(input, passOrUser, counter)
	if input.match(/\W/)
		printf "The %s cannot contain spaces or special characters\n", passOrUser
		return counter += 1
	else 
		return counter
	end
end

def contains_capital_letter(input, passOrUser, counter)
	if !input.match(/[A-Z]+/)
		printf "The %s must contain at least one capital letter\n", passOrUser
		return counter += 1
	else 
		return counter
	end
end

def contains_lowercase_letter(input, passOrUser, counter)
	if !input.match(/[a-z]+/)
		printf "The %s must contain at least one lowercase letter\n", passOrUser
		return counter += 1
	else 
		return counter
	end
end

def contains_numeral(input, passOrUser, counter)
	if !input.match(/[0-9]+/)
		printf "The %s must contain at least one numeral\n", passOrUser
		return counter += 1
	else 
		return counter
	end
end

def contains_username_substring(username, password, counter)
	if password[username]
		printf "Password cannot include username\n"
		return counter += 1
	else 
		return counter
	end
end

init()
username = get_username()
password = get_password()
counter = 0

counter = check_string_length(username, "Username", counter)
counter = contains_only_alphanumeric_characaters(username, "Username", counter)
counter = contains_capital_letter(username, "Username", counter)
counter = contains_lowercase_letter(username, "Username", counter)
counter = contains_numeral(username, "Username", counter)

counter = check_string_length(password, "Password", counter)
counter = contains_only_alphanumeric_characaters(password, "Password", counter)
counter = contains_capital_letter(password, "Password", counter)
counter = contains_lowercase_letter(password, "Password", counter)
counter = contains_numeral(password, "Password", counter)
counter = contains_username_substring(username, password, counter)

if counter == 0
	printf "The Username/Password combination is valid!"
end
