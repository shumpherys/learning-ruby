#------------------------------------------------------------------------------
#
#script name ruby typing challange 
#Author Samuel Humpherys
# date september 2013
# version 0.1
# description a typing challange
#
#------------------------------------------------------------------------------

# class deffintion
class Screen
 def cls
 	puts("\n" * 25)
 	puts "\a"
 end
 def pause
 	STDIN.gets
 end
end
class Test
 def say_hello
  Console_Screen.cls
  puts "\t\t Would you like to play a game? " + "\n\n\n\n\n\n\n\n\n\n\n\nPress enter to " +"continue. \n\n "
  Console_Screen.pause
 end
 def instructions
  Console_Screen.cls
  puts "\t\t\tInstructions:\n\n"
  puts %Q{ This game consists of a series of 5 typing challenges. Each challenge sentence is presented one at a time To respond correctly, you must retype each sentence exactly as it is shown and press the Enter key. Your grade will be displayed at the end of the test\n\n\n\n\n\n\n\n\n Press enter to continue.\n\n}
 end
 def test
 	Console_Screen.cls
 	print challenge + "\n\n: "
 	result = STDIN.gets
 	result.chop!
 	if challenge == result :
 		$noRight += 1 
 		Console_Screen.cls
 		print "Correct!\n\n Press Enter to continue"
 		Console_Screen.pause
 	else
 		Console_Screen.cls
 		print "Incorrect!\n\nPress Enter to continue"
 		Console_Screen.pause
 	end
 end
 def grade
 	Console_Screen.cls
 	if $noRight >= 3 :
 		print "You typed" + $noRight.to_s + "sentence(s) correctly."
 		puts "You have passed the typing test!\n\nPress Enter to continue"
 	else
 		print "You typed" + $noRight.to_s + "sentence(s) correctly"
 		puts "You have failed the typing test!\n\nPress Enter to continue"
 	end
 end
end
# Main Script -----------------------------------------------------------------
$noRight =  0
Console_Screen = Screen.new
Test = Test.new
Test.say_hello
Console_Screen.cls
print "would you like to play the game? (y/n)\n\n:"
answer = STDIN.gets
answer.chop!
until answer == "y" || answer =="n" 
	Console_Screen.cls
	answer = STDIN.gets
	answer.chop!
end
if answer == "n"
 Console_Screen.cls
 puts "Maybe later then\n\n"
else
Test.instructions
Test.test challenge = "In the end there can be only one."
Test.test challenge = "Once a great plauge swept across the land."
Test.test "Welcome to Ruby Programming for the Absolute" + "Beginner"
Test.test "There are very few problems in the world " + "that enough M&Ms can't fix"
Test.test "Perhaps today is a good day to die. Fight" + "beside me and let us die together."
Test.grade
Console_Screen.pause
Console_Screen.cls
puts "Thank you for playing\n\n"
end
