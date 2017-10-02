//Revision of vars anf types

import Foundation

func generateRandom (num1: UInt32, num2: UInt32)
{
    var i = num1
    while i <= num2 {
        let random = arc4random_uniform((num2 - num1) + 1) + num1
        print("\(i) random num generated: \(random) ")
        i += 1
    }
}

generateRandom(num1: 20, num2: 30)

let fahrenheit = 100.0
let ceslsius = (fahrenheit - 32) / 1.8
print(ceslsius)


//tuples

let coordinates = (x: 3222, y: 4443)
print("x-coordinates: \(coordinates.x), y-coordinates \(coordinates.y)")

let tempByDate = (day: 21, month: 12, year: 1969, temp: 12.2)
let currentTemp = (day, _, _, Decimal(temp))

print(currentTemp)

