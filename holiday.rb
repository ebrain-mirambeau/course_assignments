#define the class Holiday

class Holiday
	def initialize( mName, mDay, mMonth )
		@day = mDay
		@month = mMonth
		@name = mName
	end

	# accessor methods
	def day
		@day
	end

	def month
		@month
	end

	def name
		@name
	end

	# provide a string representation
	def to_s
		"#{@name} falls on #{@month} #{@day}\n"
	end

	def sameMonth?(holiday)
		@month == holiday.month
	end
	
	def sameDay?(holiday)
		@day == holiday.day
	end
end