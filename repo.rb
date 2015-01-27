# Infinite Void Game Repository File

#file requirements
require "./GFX.rb"

#start of module
module Repo 

########## => Method Repository <= ##########

# user 'quit' or 'exit'
def self.quitter
		print "\n\n\n"
		puts "Mission Aborted!"
		puts ""
		sleep 1.5
		GFX.game_over
		Repo.final_score
		abort
end

# asks user for input
def self.ask_user(description, question)
	puts description
	puts question
	puts ""
end

# commander name method
def self.assign_cmdr(option0)
	# if /quit/ =~ "#{option0}" || /exit/ =~ "#{option0}" || /abort/ =~ "#{option0}"
	# 	Repo.quitter
	# else
	# 	true #set to nil!!!!
	# end	
end

def self.cmdr_name
# until @cmdr_name_check
# 	Repo.ask_user("Since you'll be going down in the history books, lets make sure there arent any typos.", "How do you spell your name?")
# 	option0 = gets.chomp.downcase
# 	case Repo.assign_cmdr(option0)
# 	when true
# 		@cmdr_name_check = true
# 	when false
# 		puts "False case text
# 		puts "goes here..."
# 	else
# 		puts "Nil case text"
# 		puts "goes here.."
# 		nil
# 	end
# end
end

# prelaunch method
def self.preflight(option1)
	# if /quit/ =~ "#{option1}" || /exit/ =~ "#{option1}" || /abort/ =~ "#{option1}"
	# 	Repo.quitter
	# else
	# 	true #set to nil!!!!
	# end	
end

#prelaunch logic
def self.prelaunch
	# until @go_for_launch
	# 	Repo.ask_user("This ship is on the pad and ready for preflight.", "What are your orders, Commander?")
	# 	option1 = gets.chomp.downcase
	# 	case Repo.preflight(option1)
	# 	when true
	# 		@go_for_launch = true
	# 	when false
	# 		puts ""
	# 		puts "False case text"
	# 		puts "goes here..."
	# 		puts ""
	# 	else
	# 		puts ""
	# 		puts "Nil case text"
	# 		puts "goes here.."
	# 		puts ""
	# 		nil
	# 	end
	# end
end


#trajectory method
def self.calculate(option2)
	# if /quit/ =~ "#{option2}" || /exit/ =~ "#{option2}" || /abort/ =~ "#{option2}"
	# 	Repo.quitter
	# else
	# 	true #set to nil!!!!
	# end	
end

def self.trajectory
	# until @trajectory_check
	# 	Repo.ask_user("Pick a trajectory.", "What orbit do you aim for?")
	# 	option2 = gets.chomp.downcase
	# 	case Repo.calculate(option2)
	# 	when true
	# 		@trajectory_check = true
	# 	when false
	# 		puts ""
	# 		puts "False case text"
	# 		puts "goes here..."
	# 		puts ""
	# 	else
	# 		puts ""
	# 		puts "Nil case text"
	# 		puts "goes here.."
	# 		puts ""
	# 		nil
	# 	end
	# end
end




#light check method
def self.lightswitch(option3)
	if /quit/ =~ "#{option3}" || /exit/ =~ "#{option3}"
		Repo.quitter
	elsif /light/ =~ "#{option3}" && /on/ =~ "#{option3}" || /abort/ =~ "#{option3}"
		true
	elsif /look/ =~ "#{option3}" && /around/ =~ "#{option3}"
		false
	else
		nil
	end
end

# trouble! light check logic
def self.trouble
	until @light_check
		Repo.ask_user("It is pitch black.", "What would you like to do?\n")
		option3 = gets.chomp.downcase
		case Repo.lightswitch(option3)
		when true
			@light_check = true
		when false
			puts ""
			puts "You squint as hard as you can, but there is no light with which to see."
			puts "You are not Riddick, or some kind of space Khajiit."
			puts ""
		else
			puts ""
			puts "You fail to accomplish anything in the total darkness. You cannot even"
			puts "find your own legs. The thunderous metal creaking grows louder..."
			puts ""
			nil
		end
	end
end

# game over animation & final score
def self.final_score
	total_score = "You have died of dysentery."
	puts "===========================[ FINAL SCORE: ]==========================="
	puts ""
	puts "                    " + total_score
	puts ""
	puts "======================================================================"
end

#end of methods
end

#end of file