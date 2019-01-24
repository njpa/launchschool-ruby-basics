# EX 2
# ====
# Write a program that asks the user for their age in years, and then 
# converts that age to months.
# Exampe:

# $ ruby age.rb
# >> What is your age in years?
# 35
# You are 420 months old.

# ANSWER
# ======
# We will first output the requirement using `Kernel#puts`.
# We can then assign a variable to the user input using `Kernel#gets`.
# We must invoke `String#chomps` on the string in order to remove the carriage
# return and then invoke `String#to_int` on the result in order to attempt
# returning an integer.
# We can then initialize a variable `months` and assign it to the product 
# of `12` and the number of years obtained previously. 
# We can finally interpolate this value into a string and invoke `Kernel#puts`
# to output the resulting string.

puts ">> What is your age in years?"
years = gets.chomp.to_i
months = years * 12
puts "You are #{months} months old."

# FURTHER EXPLORATION
# ===================
# What happens if you enter a non-numeric value for the age?
# The `String#to_i` method will return a `0` if the caller is not an integer.

