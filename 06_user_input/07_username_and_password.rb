# EX 7
# ====
# In the previous exercise, you wrote a program to solicit a password. In this 
# exercise, you should modify the program so it also requires a user name. The 
# program should solicit both the user name and the password, then validate 
# both, and issue a generic error message if one or both are incorrect; the 
# error message should not tell the user which item is incorrect.

# ANSWER
# ======
# 1) initialize a constant named `PASSWORD` and assign it to the string
# `"superpassword"`.
# 2) initialize a constant name `USERNAME` and assign it to the string
# `"norm"`.
# 3) create a `loop` skeleton.
# 4) prompt the user for a username using `puts`.
# 5) capture the string using `gets` invoking `chomp` on it as well.
# 6) initialize a variable local to the `loop` named `try_username`
# and assign it to the entered username.
# 7) prompt the user for a password using `puts`.
# 8) capture the string using `gets` invoking `chomp` on it as well.
# 9) initialize a variable local to the `loop` named `try_password`
# and assign it to the entered password.
# 10) we will use an `if/else` statement instead of a simple `if` 
# statement since we have a few possible scenarios:
# - insert an `if` statement that checks that `username` is equal to 
# `try_username` and `password` is equal to `try_password`
# - if that evaluates to `true`, a `break` statement is executed.
# - add an `elsif` statement checking that `username` is equal to 
# `try_username` or `password` is equal to `try_password`.
# - if this statement evaluates to `true` then the user is prompted
# with a message saying `">> Either your username or password is incorrect!".
# - add an `else` statement which will output the following if it is `true`,
# `">> Both your username and password are incorrect!".
# 11) outside of the loop, insert a `puts` statement indicating that the 
# user has gain access.

USERNAME = "norm"
PASSWORD = "password"

loop do
  puts ">> Please enter your username: "
  username = gets.chomp
  puts ">> Please enter your password: "
  password = gets.chomp
  if username == USERNAME and password == PASSWORD
    break
  elsif username == USERNAME or password == PASSWORD
    puts ">> Either your username or password is incorrect!"
  else
    puts ">> Both your username and password are incorrect!"
  end
end

puts "Welcome!"

