# QUESTION
# ========
# Using the ruby documentation, determine how you can write large numbers in a way that makes them easier to read.

# ANSWER
# ======
# Go to the Core API, then go to `doc/syntax/literals`.
# "Literals" comes from the notion that most values used in
# ruby have some sort of "literal syntax" (e.g. number must be
# entered as `1234` and strings as `"hello world"` with quotes,
# symbols as `:symbol`, etc.).
# The section on Numbers says that we can write numbers 
# using the underscore to enhance readability for humans.
# For example:

large_number = 53_530_000

