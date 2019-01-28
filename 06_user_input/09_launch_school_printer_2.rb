# EX 9
# ====
# In an earlier exercise, you wrote a program that prints 
# `'Launch School is the best!' repeatedly until a certain number of lines 
# have been printed. 

# Modify this program so it repeats itself after each input/print iteration, 
# asking for a new number each time through. The program should keep running 
# until the user enters `q` or `Q`.

loop do
	number_of_lines = nil
	finished = false

	loop do
		puts ">> How many output lines? Enter a number >= 3 or 'q' to quit: "
		answer = gets.chomp
		if answer == 'q'
			finished = true
			break
		end
		if answer.to_i >= 3
			number_of_lines = answer.to_i
			break 
		end
		puts ">> That's not enough lines."
	end
	
	if finished
		break
  else	
		while number_of_lines > 0
			puts 'Launch School is the best!'
			number_of_lines -= 1
		end
	end
end

puts ">> OK. See you later!"

