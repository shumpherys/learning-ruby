#------------------------------------------------------------------------------
#
# Script name: Ruby guessing game
# Author: Samuel Humpherys
# Date: sep 2013
# Descriptions: a ruby random number game can you guess the number
#
#------------------------------------------------------------------------------
#---------------------------Class definitions----------------------------------
class Screen 
	def cls
		puts ("\n" * 25) 
		puts "\a"
	end
	def pause
		STDIN.gets
	end
end
class Game
	def greeting
		Console_Screen.cls
		print "\t\t Welcome to the Ruby number guessing game!" + "\n\n\n\n\n\n\n\n\n\n\n\n\n\nPress Enter to" + "continue"
		Console_Screen.cls
	end
	def instructions
		Console_Screen.cls
		puts "instructions:\n\n"
		puts "This game randomly generates a number from 1 to 100 and"
		puts "challenges you to identify it in as few guesses as possible."
		puts "After each guess, the game will analyze your input and provide"
		puts "you with feedback. You may take as many turns as you need in"
		puts "order to guess the game's secret number."
		puts "Good luck!\n\n\n\n\n\n\n\n\n"
		print "Press Enter to continue."
		Console_Screen.pause
	end
	def generate_number
		return randomNo = 1 + rand(100)
	end
	def play_game
		number = generate_number
		loop do 
			Console_Screen.cls
			print "\nEnter your guess and pres the Enter key: "
			reply = STDIN.gets
			reply.chop!
			reply = reply.to_i
			if reply < 1 or reply > 100 then
				redo
			end
			if reply == number then
				Console_Screen.cls
				print "You have guessed the number! Press Enter to continue."
				Console_Screen.pause
				break
			elsif < number then
				Console_Screen.cls
				print "Your guess is too low! Press Enter to continue."
				Console_Screen.pause
			elsif > number then
				Console_Screen.cls
				print "your guess is too low! Press Enter to continue."
				Console_Screen.pause
			end
		end
	end
	def credits
		Console_Screen.cls
		puts "\t\t Thank you for playing the Ruby number guessing game.\n\n\n\n"
		puts "\n\t\t\t By: Samuel Humpherys."
	end
end
#-----------Main Script Logic---------------------------------------------------
$noRight = 0 
Console_Screen = Screen.new
SQ = Game.new
SQ.greeting
answer = ""
loop do
	Console_Screen.cls
	print "Are you ready to play the Ruby Random Number Guessing Game? (y/n):"
	answer = STDIN.gets
	answer.chop!
	break if answer == "y" || answer == "n"
end
if answer == "n"
	Console_Screen.cls
	puts "Maybe later then :-(\n\n"
else
	 SQ.instructions
 loop do
 	SQ.play_game
 	Console_Screen.cls
 	print "Would you like to play again? (y/n)"
 	playAgain = STDIN.gets
 	playAgain.chop!
 	break if playAgain == "n"
end
