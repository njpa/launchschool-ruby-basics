# EX 4
# ====
# In the previous exercise, you wrote a program that asks the user if they 
# want the program to print "something". However, this program recognized 
# any input as valid: if you answered anything but `y`, it treated it as an 
# `n` response, and quit without printing anything.
#
# Modify your program so it prints an error message for any inputs that 
# aren't `y` or `n`, and then asks you to try again. Keep asking for a response 
# until you receive a valid `y` or `n` response. In addition, your program should 
# allow both `Y` and `N` (uppercase) responses; case sensitive input is 
# generally # a poor user interface choice. Whenever possible, accept both 
# uppercase and lowercase inputs.

# ANSWER
# ======
# We will use a `loop` statement to ensure that the program starts in a loop
# and iterates until we explicitly tell it to break out of the loop.
# Inside of the loop, we first output the requirements using `puts`.
# Then, we obtain the text using `gets` whilst invoking `chomp` on `gets` to
# remove carriage returns, and in turn invokind `upcase` on that result to
# return an uppercase version of the inputted text.  Store this value in a
# variable called `input`.
# Create an `if/else` statement where the condition checks to see that
# `input` is equal to `y`. If this test evaluates to `true` we output the
# string `"something"` and add a `break` statement directly underneath
# it in order to break out of the loop and ask nothing more of the user.  
# We add to this an `elsif` expression to check 
# that `input` is  equal to `N`.  If this test evaluates to `true`, we break 
# out of the loop with a `break` statement.  
# We add to this an `else` expression.  We add here a `puts`
# invocation to output `"Looks like I didn't get a valid answer. 
# The lack of a `break` will iterate once more
# in the loop asking the user to input something again.

loop do
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.upcase
  if answer == 'Y'
    puts "something"
    break
  elsif answer == 'N'
    break
  else
    puts "Looks like I didn't get a valid answer."
  end
end

# ALTERNATIVE
# ===========
# We could rely on the loop solely to ensure that the user inputs either 
# 'n' or 'y' and handle the additional logic outside of the loop.
# Furthermore, using the `Array#include?` method can allow us to keep
# the code concise whilst allowing for more valid answers to be processed.

answer = nil
loop do
  puts ">> Shall I print something?"
  answer = gets.chomp.downcase
  break if %W(sure si yep yeah yes ja oui nay nope no non nil nah)
  puts "Looks like I didn't get a valid answer... try again." 
end
puts "something" if %W(sure si yep yeah yes ja oui).include?(answer)

