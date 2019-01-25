# EX 6
# ====
# Write a program that displays a welcome message, but only after the user 
# enters the correct password, where the password is a string that is defined 
# as a constant in your program. Keep asking for the password until the user 
# enters the correct password.

# ANSWER
# ======
# 1) instantiate a variable named `password` and assign it to the string
# `"abracadabra"`.
# 2) create a `loop` skeleton directly underneath.
# 3) inside of the loop, ask the user for the password using `puts`
# 4) obtain the text using `gets`.  Invoke `chomp` on the result.
# Instantiate a variable `password_entered` and assign it to the text
# obtained above.
# 5) insert a `break` statement with an `if` statement that checks that
# the entered text is equal to the `password` variable
# 6) outside of the `loop`, output a welcome message with `puts`.

PASSWORD = "abracadabra"

loop do
  puts ">> Enter password: "
  entered_password = gets.chomp
  break if entered_password == password
  puts "Invalid password!"
end

puts "Welcome!"

