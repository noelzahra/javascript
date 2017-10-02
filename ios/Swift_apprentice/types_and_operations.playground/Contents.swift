//Types and operations

import Foundation

//type conversion
var integer: Int = 120
var decimal: Double = 12.5
integer = Int(decimal)


let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalPayment: Double = hourlyRate * Double(hoursWorked) // operators can only work with the same type
print("Payment for work: \(totalPayment)")


//type inference
let newInteger: Int = 98
let typeInferredInt = 98
let typeInferredDecimal = 1.618
let typeInferredLong = 2389687198308340

//Enforcing a particular type
let makeDouble = Double(24)
let makeDouble2: Double = 24
let makeDouble3 = 24 as Double
let makeDouble4 = 24.0

print(type(of: makeDouble))

//Exercises
//1.
let age1 = 42
let age2 = 21
print("age1 is a type: \(type(of: age1))\nage2 is a type: \(type(of: age2))")


//2.
let avg1 = (Double(age1 + age2) / 2)
print("Avergae age: \(avg1)")

//STRINGS
//Characters
let characterA: Character = "A"
let characterB: Character = "🐶"
print(type(of: characterA), type(of: characterB))

let string: String = "Dog"
let string2 = "Puppy" // inferred string type

//Concat
var message = "Hello" + " my name is "
let name = "Scott"
message += name
print(message)

let punctuation: Character = "!"
message += String(punctuation)
print(message)

//Interpolation
let user = "Pierre"
print("Username is \(user)")

let userAge = 20
print("User: \(name), Age: \(userAge)")//Int interploated into string

//Exercise
//1.
let firstName = "Pierre"
let secondName = "Zahra"

let fullName = firstName + " " + secondName
print(fullName)

let myDetails = "Hello, my name is \(fullName)"
print (myDetails)

//Tuples - paired/grouped data, data which has more then one value eg, coordinates
let coordinates: (Int, Int) = (3294, 9492)
let moreCoordinates = (322.1, 339.2)//inferred as double
let pointX = coordinates.0
let pointY = coordinates.1
print("x-coordinates: \(pointX). y-coordinates: \(pointY)")

let coordinatesNamed = (x: 5778, y: 7765)
let lat = coordinatesNamed.x
let long = coordinatesNamed.y

let coordinates3D = (x: 2, y: 4, z: 6)
let (x, y, z) = coordinates3D
print("3D coordinates are: \(x, y, z)")

let secondCoordinates3D = (a: 8, b: 9, c: 12)
let (a, b, _) = secondCoordinates3D //using underscore in swift ignores a param

//Exercise
//1.
let dateTemp = (12, 21, 2017, 18.4)
let dateTemp2 = (month: 12, day: 21, year: 2017, averageTemp: 18.4)

let (_, day, _, averageTemp) = dateTemp2
print(dateTemp2)

var dateTemp3 = (month: 12, day: 21, year: 2017, averageTemp: 18.4)
dateTemp3.averageTemp = 22.7
print(dateTemp3)

let valA: UInt8 = 12
let valB: UInt16 = 260
let valC: UInt32 = 3424

let sum = Int(valA) + Int(valB) + Int(valC)
print(sum)


print("\n=========\nChallenge\n=========\n")

//Challenge
let finalCoordinates = (2, 3)
print(finalCoordinates.0, finalCoordinates.1)
let namedCoordinates = (row: 6, column: 4)
print(namedCoordinates.row, namedCoordinates.column)


let tuple = (100, 1.5, 10)
let value = tuple.1
print("\(value) is type \(type(of: value))")

let date = (day: 15, month: 8, year: 2017 )
print(date.month)

let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"
print(summary)

let d = 4
let e: Int32 = 100
let f: UInt32 = 12
let answer = d + Int(e) - Int(f)
print(answer)


