import Foundation

//Swift control flow

var list = ["Sydney", "Tom", "Matt", "Ben"]

//if else statement
print("\n=================\nif else statement\n=================\n")

list.count > 6 ?
    print("Party is on. \(list.count) friends are invited") :
    print("Party is on hold, Only \(list.count) friends are interested")

if list.count > 20 {
    print("too many for the party")
}
else if list.count <= 3 {
    print("Cancel the party")
}
else {
    print("Just right")
}


print("\n===============\nSwitch stamenet\n===============\n")
//switch statements
switch list.count {
case let x where x > 20:
    print("Too mnay people invited")
case let x where x <= 3:
    print("Not really a party")
default:
    print("Just right")
    break
}


var cities = ["London", "Milan", "Paris", "Barcelona", "Munich", "Stockholm" ]

for city in cities    {
    print(city)
}


var gate = 4

switch gate {
case 1...3:
    print("Gate: \(cities[0])")
case 4...6:
    print("Gate: \(cities[2])")
case 7...8:
    print("Gate: \(cities[3])")
case 9...10:
    print("Gate: \(cities[5])")
default:
    break
}


var city = cities[3]

switch city {
case "London", "Paris":
    print("Chosen \(city)")
case let x where x.hasPrefix("M"):
    print("Chosen \(city) is boarding at gate 3")
case let x where x.hasPrefix("B"):
    print("Chosen \(city) is boarding at gate 4")
default:
    print("\(city) not in list")
    break
}

print("\n==========\nLoops\n==========\n ")

//loops
var sports = ["running", "cycling", "paragliding", "buggykiting", "kayaking"]

var index = 0
while index < sports.count {
    print("\(sports[index]) is selected")
    index+=1
}


for sport in sports {
    print("Sport choice: \(sport)")
}

print("\n=============\nfor in loops\n=============\n")

var filmsByGenre = [
    "scifi" : "Blade Runner",
    "history" : "Abraham Lincoln",
    "comedy" : "Blues Brothers",
    "drama" : "Mystic river"
]

for (genre, film) in filmsByGenre {
    print("\(film) is a great \(genre) film to watch")
}


for sport in sports where sport.hasPrefix("r") {
    print("\(sport.capitalized) is the best performing sports")
}


for sport in sports where sport.hasPrefix("p") {
    print("\(sport.uppercased()) is preferred activity.")
}


var cars = [
    "ford" :"Focus",
    "vw": "Golf",
    "toyota" : "Auris",
    "honda" : "Civic"
]

for (brand, car) in cars {
    print("\(car) is the best sold range in the \(brand)")
}


for index in 0 ..< sports.count {
    print("\(index) : \(sports[index].capitalized)")
}

for sport in sports {
    if sport.hasPrefix("r") {
        continue
    }
    print("\(sport) without letter 'r' ")
}

print("\n====\nBool\n====\n")

let isOn = true

//terneray operator
!isOn ? print("All systems go") : print("Stop launch")
