users = [
	{ username: "abc", password: "password1" },
	{ username: "def", password: "password2" },
	{ username: "ghi", password: "password3" },
	{ username: "jkl", password: "password4" },

]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|

		if user_record[:username] == username && user_record[:password] == password
			return user_record			
		end
	end
	"This password is already used by starboy98. Try another."
end

puts "Set your credentials here!"
35.times { print "-" }
puts

attempts = 1
while attempts < 4
	print "Username: "
	username = gets.chomp
	print "Password: "
	password = gets.chomp
	authentication = auth_user(username, password, users)
	puts authentication

	puts "Press n to quit or Enter to try again: "
	input = gets.chomp.downcase 
	break if input == "n"
	attempts += 1

	
end

puts "You have exceeded the number of attempts: 4." if attempts == 4