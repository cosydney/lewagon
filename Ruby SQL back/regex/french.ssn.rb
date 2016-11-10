# extracting infos from French SSN (Social Security Number) using regexp
# the key (last 2 digits of the ssn) must be equal to
# the rest of the division of (97 - ssn_without_key) by 97
# save random digits
# check last digits

Month_array = %w(January February March April May June July August Sept Oct Nov December)

Departement_hash = {
  "02" => "Aisne",
  "74" => "Haute-Savoie",
  "73" => "Savoie",
  "69" => "Villefranche-sur-Saône",
  "76" => "Seine-Maritime"
}

def french_ssn_info(number)
  # define pattern with named groups on rubular and save in a variable
  pattern = /^(?<gender>[12])\s?(?<birth_year>\d{2})\s?(?<birth_month>[01]\d)\s?(?<departement>\d{2})\s?(\d{3}\s?){2}(?<key>\d{2})$/
  # check if valid - number.match(pattern).nil?
  result = number.match(pattern)
 # if not print The number is invalid
  if result.nil? || result["key"].to_i != (97 - number[0..-3].gsub(" ", "").to_i) % 97
    "The number is invalid"
  else
    # if it is valid
    # check if it is a man or women and save it
    gender = result["gender"] == "1" ? "men" : "women"
    # check month and translate month into month name
    month = result["birth_month"].to_i
    # check the year of birth and save it
    year = "19" + result["birth_year"]
    # check department and translate the departament into its name -> 01- 99 -> hash
    "A #{gender}, born in #{Month_array[month - 1]}, #{year}, in #{Departement_hash["76"]}"
  end
end

# should return "a man, born in December, 1984 in Seine-Maritime."
p french_ssn_info("1 84 12 76 451 089 46")


# should return "The number is invalid"
# french_ssn_info("123")