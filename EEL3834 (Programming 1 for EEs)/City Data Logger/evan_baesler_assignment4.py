# Function used to add cities and their temperatures to our data
def addCity(cities):

    cityName = ""
    cityCode = ""

    # Checks if the name inputted is valid by making sure the value is not empty (0 characters long)
    validName = False
    while not validName:
        cityName = input("Enter City Name: ")

        if len(cityName) == 0:
            print("Error: City name cannot be empty.")
        else:
            validName = True

    # Checks that the inputted code is 3 characters long and only letters.
    validCode = False
    while not validCode:
        cityCode = input("Enter City Code: ")

        if len(cityCode) != 3 or not cityCode.isalpha():
            print("Error: City code must be unique and exactly 3 letters.")
        else:
            # Iterates through existing codes to find a match, if it does the code is invalid
            duplicateCode = False
            for city in cities:
                if city['code'] == cityCode.upper():
                    print("Error: City code must be unique and exactly 3 letters.")
                    duplicateCode = True
            if not duplicateCode:
                validCode = True
    # Moves on to checking temperature inputs, makes sure we are taking 1 to 7 inputs (ensure it is an integer)
    while True:
        try:
            tempCount = int(input("Enter number of temperature readings (max 7): "))
            if 1 <= tempCount <= 7:
                break
            else:
                print("Error: You must enter between 1 and 7 temperatures.")
        except ValueError:
            print("Error: You must enter between 1 and 7 temperatures.")

    # Initializes the list for city temperatures, takes as many temperature readings as listed above
    cityTemperatures = []
    for i in range(tempCount):
        while True:
            try:
                # Makes sure the temperature comes in form of a float, and checks to make sure the temperature
                # is within range
                temp = float(input(f"Enter temperature {(i+1)}: "))
                if -100 <= temp <= 100:
                    cityTemperatures.append(temp)
                    break
                else:
                    print("Error: Temperature must be between -100 and 100 degrees.")
            except ValueError:
                print("Error: Temperature must be between -100 and 100 degrees.")


    # Initializes our city as a dictionary
    city = {
        'name': cityName,
        'code': cityCode.upper(),
        'temperatures': cityTemperatures
    }

    # Adds our data to the storage by adding to the end of our cities list
    cities.append(city)
    print("City data added successfully!\n")

# Function to calculate the average temperature of a city or all cities
def calculateAverageTemperature(cities):

    tempSum = 0
    tempCount = 0
    choice = input("Enter City Code (or press enter for overall average): ")

    # If we get an empty input, we check all cities average temperature
    if len(choice) == 0:

        print("Calculating overall average temperature...")
        # Iterates through all cities, and all temperatures within each city to find total temp and amount of temps
        for city in cities:
            for temp in city['temperatures']:
                tempSum += temp
                tempCount += 1
        averageTemp = tempSum / tempCount
        print("Average temperature across all cities: ", round(averageTemp, 2), "C \n")

    # If we get a length of 3, we know it is a code, and check to see if it matches an existing code
    elif len(choice) == 3:
        exists = False
        # Checks through each city and checks their code to see if it matches
        # if it does it finds the average temperature
        for city in cities:
            if city['code'].upper() == choice.upper():
                exists = True
                for temp in city['temperatures']:
                    tempSum += temp
                    tempCount += 1
                # If there are no temperatures we just output 0.00 C to prevent division by zero
                if tempCount == 0:
                    print("Average temperature for", city['code'] + ":", 0.00, "C\n")
                # Otherwise we take our average
                else:
                    print("Average temperature for", city['code'] + ":", "{:.2f}".format(tempSum / tempCount), "C\n")
                break

        # If a matching city cannot be located, we send back an error
        if not exists:
            print("Error: No city found.")

# Finds the hottest and coldest cities in all of our data
def hottestAndColdestCities(cities):

    # If there are no cities, we cannot find the hottest or coldest
    if len(cities) == 0:
        print("Error: No cities found.\n")
        return

    hottestCity = ""
    coldestCity = ""
    hottestCityTemp = 0
    coldestCityTemp = 0

    # We iterate through all cities and take the sum and count of temperature data, and find the average
    for city in cities:
        temps = city['temperatures']

        if len(temps) == 0:
            print("Error: No temperatures found.\n")
            continue

        averageCityTemp = sum(temps)/len(temps)

        # If the current city is hotter OR if the hottest city is empty we replace it with our current data
        if averageCityTemp > hottestCityTemp or hottestCity == "":
            hottestCity = city['name']
            hottestCityTemp = averageCityTemp
        # If the current city is colder OR if the coldest city is empty we replace it with our current data
        if averageCityTemp < coldestCityTemp or coldestCity == "":
            coldestCity = city['name']
            coldestCityTemp = averageCityTemp

    # Prints our hottest and coldest city averages to two decimal places
    print(f"Hottest city: {hottestCity} (Average: {hottestCityTemp:.2f} C)")
    print(f"Coldest city: {coldestCity} (Average: {coldestCityTemp:.2f} C)")
    print()

# Find information for a single city based on search by code or name
def searchCity(cities):

    # Loops until given either 1 or 2
    while True:
        try:
            choice = int(input("Search by (1 for Code, 2 for Name): "))
            if choice == 1 or choice == 2:
                break

        except ValueError:
            print("Error: Please enter 1 or 2.")

    exists = False

    # If they choose to search by code they enter the code and it is compared to all codes
    # If a match is found it displays all data given on that city
    if choice == 1:
        codeTrack = input("Enter City Code: ")
        print()

        for city in cities:
            if city['code'].upper() == codeTrack.upper():
                exists = True
                print("City Found:\n")
                print("Code:", city['code'])
                print("Name:",city['name'])
                print("Temperature Readings:",city['temperatures'])
                averageTemp = sum(city['temperatures']) / len(city['temperatures'])
                print(f"Average: {averageTemp:.2f} C")
                print("\n")
        if exists == False:
            print("Error: No city found with code " + codeTrack.upper() + ".\n")

    # If they choose to search by name they enter the name and it is compared to all names
    # If a match is found it displays all data given on that city
    if choice == 2:
        nameTrack = input("Enter City Name: ")
        print()

        for city in cities:
            if city['name'].upper() == nameTrack.upper():
                exists = True
                print("City Found:\n")
                print("Code:", city['code'])
                print("Name:",city['name'])
                print("Temperature Readings:",city['temperatures'])
                averageTemp = sum(city['temperatures']) / len(city['temperatures'])
                print(f"Average: {averageTemp:.2f} C")
                print("\n")
        if exists == False:
            print("Error: No city found with code " + nameTrack.upper() + ".\n")

# Removes cities and their temperatures from our data
def removeCity(cities):

    # Takes a city code and deletes the matching city code in our data
    deletedCityCode = input("Enter City Code to remove: ")
    exists = False

    for city in cities:
        if city['code'].upper() == deletedCityCode.upper():
            cities.remove(city) # Finds the city within the cities and removes it from its current location
            exists = True
            print("City", deletedCityCode,"removed successfully!")

    if exists == False:
        print("Error: No city found.\n")

    print()

# Holds our menu and choices to run other functions, always runs until exited
def main():
    # Initializes an empty cities list upon opening
    cities = []

    while True:
        print("===== Weather Data Logger =====")
        print("1. Add City and Temperature Readings")
        print("2. Calculate Average Temperature")
        print("3. Find Hottest and Coldest Cities")
        print("4. Search City")
        print("5. Remove City Data")
        print("6. Exit")

        choice = int(input("Enter your Choice: "))
        print()

        if choice == 1:
            addCity(cities)
        elif choice == 2:
            calculateAverageTemperature(cities)
        elif choice == 3:
            hottestAndColdestCities(cities)
        elif choice == 4:
            searchCity(cities)
        elif choice == 5:
            removeCity(cities)
        elif choice == 6:

            print()
            print("Exiting the program... Goodbye!")
            exit()
        else:

            print("Invalid ")

main()