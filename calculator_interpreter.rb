##Author: Ebrain Mirambeau
##Purpose: Calculator interpreter (Ruby)

class Token
	attr_accessor :kind, :value
	
	def initialize(kind, value)
		@kind = kind
		@value = value
	end
	
	def to_s
		@kind  + ", " + @value + " "
	end	

	def get_kind
		@kind
	end

	def get_value
		@value
	end
end


class Scanner 

	def next_token()
		input = gets
		input = input.sub("\n", "")
		if input.eql?("(")
			return Token.new("LPARENTH", input)
		elsif input.eql?(")")
			return Token.new("RPARENTH", input)
		elsif input.eql?("sqrt")
			return Token.new("SQRT", input)
		elsif input.eql?("*")
			return Token.new("MULT", input)
		elsif input.eql?("**")
			return Token.new("POW", input)
		elsif input.eql?("+")
			return Token.new("ADD", input)
		elsif input.eql?("-")
			return Token.new("SUBT", input)
		elsif input.eql?("=")
			return Token.new("EQL", input)
		elsif input.eql?("unset")
			return Token.new("UNSET", input)
		elsif input.eql?("sqrt")
			return Token.new("SQRT", input)
		elsif input.eql?("/")
			return Token.new("DIV", input)
		elsif input.eql?("exit")
			return Token.new("EXIT", input)
		elsif input.eql?("quit")
			return Token.new("QUIT", input)
		elsif input.eql?("list")
			return Token.new("LIST", input)
		elsif not input.match('[0-9]+\.[0-9]+').eql?(nil)
			if input.eql?(input.match('[0-9]+\.[0-9]+')[0])
				return Token.new("NUM", input)

			end
		elsif not input.match('[0-9]+').eql?(nil)
			if input.eql?(input.match('[0-9]+')[0])
				return Token.new("NUM", input)

			end
		elsif not input.match('[A-za-z][0-9a-z_]*').eql?(nil)
			if input.eql?(input.match('[A-Za-z][0-9a-z_]*')[0])
				return Token.new("ID", input)
			else
				raise "token not supported"
			end
		else
			raise "token not supported"
		end


	end
end


class Parser 
	attr_accessor :current_token, :hash_table, :sub_computation, :scan, :place_holder

	def initialize()
		@scan = Scanner.new()
		@hash_table = {}
		@sub_computation = 0
		@current_token = Token.new("", "")
		@current_token = @scan.next_token() #read in token
		program()
		
	end

	def program()
		statement()
	end

	def statement()
		if @current_token.get_value().eql?("exit")
			puts @sub_computation
			exit
		elsif @current_token.get_value().eql?("quit")
			exit
		elsif @current_token.get_kind().eql?("ID") and not @hash_table.has_key?(@current_token.get_value())
			identifier = @current_token.get_value()
			@current_token = @scan.next_token()
			if @current_token.get_value().eql?("=")
				@current_token = @scan.next_token()
				temp = exp()
				@hash_table[identifier] = temp
				statement()
			else
				raise "Expecting = sign"
			end
		elsif @current_token.get_value().eql?("unset")
			@current_token = @scan.next_token() 
			if @hash_table.has_key?(@current_token.get_value())
				@hash_table.delete(@current_token.get_value())
				@current_token = @scan.next_token()
				statement()
			else
				raise "Element not existent"
			end
		elsif @current_token.get_value().eql?("list")
			@hash_table.each {|key, value| puts "#{key}  #{value}"}
			@current_token = @scan.next_token()
			statement()
			
		else
			@sub_computation = exp()
			program()
		end
		
	end



	def exp()
		temp = term() #still on current token
		if @current_token.get_value().eql?("+") 
			@current_token = @scan.next_token()
			temp += exp()

		elsif	@current_token.get_value().eql?("-") #current_token.get_value.eql?("-")
				@current_token = @scan.next_token()
				temp -= exp()
		else
			return temp
			
		end
	end



	def term()
		temp = power()
		if @current_token.get_value().eql?("*")
			@current_token = @scan.next_token() 
			temp *= term()
		elsif @current_token.get_value().eql?("/")  #current_token.get_value.eql?("/")
			@current_token = @scan.next_token()
			temp /= term()
		else
			return temp
		end
	end

	def power()
		temp = factor()
		if @current_token.get_value().eql?("**") 
			@current_token = @scan.next_token()
			temp = temp ** power() 
		else
			return temp
		end
	end
	
	def factor()
	
		if @current_token.get_value().eql?("(")
			@current_token = @scan.next_token() 
			temp =  exp()
			if @current_token.get_value().eql?(")")
				@current_token = @scan.next_token()
				return temp 
			else
				raise "Expecting right parenthesis"	
			end
		elsif @current_token.get_value().eql?("sqrt")
			@current_token = @scan.next_token()  
			if @current_token.get_value().eql?("(")
				@current_token = @scan.next_token()    
				temp = Math.sqrt(exp())
				if @current_token.get_value().eql?(")") 
					@current_token = @scan.next_token()
					return temp
				else 
					raise "Expecting right parenthesis"
				end
			else
				raise "Expecting left parenthesis"
			end
		elsif @current_token.get_kind().eql?("NUM")
			temp = @current_token.get_value()
			@current_token = @scan.next_token() 
			return temp.to_i 
		elsif @current_token.get_kind().eql?("ID")
		  	temp = @current_token.get_value()
			@current_token = @scan.next_token() 
			return hash_table[temp]
		else
			raise "Incorrect input"
		end
	end

end

###test###

prgm = Parser.new()
