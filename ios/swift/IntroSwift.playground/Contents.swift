//: constant and vars

let pi = 3.14 //constant

var circleDiameter = 30


//Conatinaers or Collection types: tuple, array and dictionary
//Tuple

var card = (color: "red", suit: "Hearts", value: 7)

print("Chosen card is:", card.color, card.value, card.suit)


let duration = 70

var destination = "London"

var flight = (airline: "Lufthansa", runway: 88, type: "Boeing")

print("Flight:", flight.airline, flight.type, flight.runway, "for:", destination)

var diceRoll = (4, 6, 5)
print(diceRoll.0, diceRoll.1, diceRoll.2)

diceRoll.2 = 3
print(diceRoll.2)

//Array
var invitees = ["Sarah", "Jamison", "Marco", "Roana"]
invitees += ["Ryan", "Sydney"]
print("New invitees are:", invitees[4], "and", invitees[5])

var cities = ["London", "Milan", "Barcelona"]
cities += ["Florence", "Berlin"]
print("New cities added:", cities[3], cities[4])

//Dictionary - collection of keys and values similar to php associative array

var showsByGenre = [
    "comedy" : "Big Bang Theory",
    "drama" : "Games of Thrones"
]

//print(showsByGenre["drama"])

showsByGenre["news"] = "CNBC"

print(showsByGenre)
