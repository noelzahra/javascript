//: Functions

import Foundation

func message(name: String, age: Int) {
    print("Hello world \(name) \(age) yeasr old.")
}

message(name: "Noel", age: 47)


func add(var1: Int, var2: Int) -> Int {
    return var1 + var2
}

var sum = add(var1: 5, var2 : 2)
print(sum)

func subtract(var1: Int, var2: Int) ->Int {
    var sum = 0
    if var1 > var2 {
        sum = var1 - var2
    } else {
        sum = var2 - var1
    }
    return sum
}

print(subtract (var1: 2, var2: 8))

var invitees = ["Sara", "Sharon", "Tea", "Serena", "Krista"]

func addInvitee
    (
    invitees: [String],
    invitee: String
    )
    -> [String]
{
    var list: [String] = []
    if invitees.count >= 20 {
        list = invitees
    } else {
        list = invitees + [invitee]
    }
    return list
}

print(addInvitee(invitees: invitees, invitee: "Pela"))

var cities = ["London", "Milan", "Prague", "Munich"]

func addNewCity
    (
    cities: [String],
    city: String
    )
    -> [String]
{
    guard cities.count < 20 else {
        return cities
    }
    return cities + [city]
}

print(addNewCity(cities: cities, city: "Stockholm"))

print("\n\n=========\nRandom number generator\n=========\n")

func generateRandom (int1: UInt32, int2: UInt32)
{
    var i = int1
    while i <= int2 {
        let random = Int(arc4random_uniform(int2))
        i+=1
        print("\(i - 2) : \(random) random is \(type(of: random)) int 2 \(type(of: int2))")
    }
}

generateRandom(int1: 2, int2: 20)
