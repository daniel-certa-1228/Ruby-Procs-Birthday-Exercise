require 'date'
# puts "test main.rb"
birthday = Date.new(1974,12,28)
# puts "My birthday: #{birthday}"

##############
def birthday_counter(birthday, &block)
	today = Date.today
	age = today.year - birthday.year
	yield age
end

birthday_counter(birthday) do |i| 
	while i > 0
		puts "Happy Bday #{i}"
		i = i-1
	end
end

##############
today = Date.today
this_year = today.year
three_from_now = (today.year + 3)

def bday_counter_2(this_year, three_from_now, bday_proc)
	bday_proc.call(this_year,three_from_now)
end

bday_proc = Proc.new do |this_year, three_from_now|
	while three_from_now >= this_year
		puts "HBDAY #{this_year}"
		this_year = this_year + 1
	end
end

puts bday_counter_2(this_year, three_from_now, bday_proc)













