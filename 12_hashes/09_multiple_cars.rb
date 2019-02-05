# EX9
# ===
# Create a nested hash using the following data.

#Car
# type  color  year
# ----- -----   ----
# sedan  blue  2003
# Truck
# type  color  year
# pickup  red  1998

# ANSWER
# ======
# To meet the problem requirements, we will create a multidimensional
# hash containing two hashes as elements.  The first hash will have the
# string `'Car'` as the key and a hash containing the details of the sedan
# as the value.  The second hash will have the string `'Truck'` as the key
# and a hash containing the details of the pickup as the value.

multiple_cars = {
  "Car" => { type: "sedan", color: "blue", year: 2003 },
  "Truck" => { type: "pickup", color: "red", year: 1998 }
}

p multiple_cars

