//Various swift types

import Foundation

//Constants
let number: UInt8 = 24
let pi: Double = 3.14159

//number = 20 will give an error as number is assigned to a constant (let keyword)

//Variables
var balance: Double = 5000.55
balance += 200
print("New balance: \(balance)")

balance -= 500
print("New balance after withdrawal: \(balance)")

//Mini exercise
let myAge: UInt8 = 48
print("My age is \(myAge) years")

var averageAge: Double = 48
averageAge += 30
averageAge /= 2
print("Avergae age is: \(averageAge) years")

let testNumber: UInt8 = 45
let evenOdd = testNumber % 2
print("Modulo result: \(evenOdd)")


var answer: UInt16 = 0
answer += 1
answer += 10
answer *= 10
answer >>= 3

//Challenge
print("\n=========\nChallenges\n=========\n")

let exercises = 11
var exerciseResolved = 0


//1.
exerciseResolved += 1

//2.
var age: UInt8 = 16
print(age)

age *= 2
age -= 2
print(age)
exerciseResolved += 1

//3.
let a: Int = 46
let b: Int = 10

let answerA: Int = ( a * 100 ) + b
let answerB: Int = ( a * 100 ) + ( b * 100 )
let answerC: Int = ( a * 100 ) + ( b / 10 )
print(answerA, answerB, answerC)
exerciseResolved += 1

//4.
let solution: Int = ( 5 * 3) - ((4 /  2) * 2)
print(solution)
exerciseResolved += 1

//5.
let varA: Double = 12.5
let varB: Double = 24.5

let average: Double  = (varA + varB) / 2
print(average)
exerciseResolved += 1

//6.
let fahrenheit: Double = 100
let celsius: Double = (fahrenheit - 32) / 1.8
print(celsius)
exerciseResolved += 1

//7.
let position: Int = 20
let row: Int = position / 8
let column: Int = position % 8

print(row, column)
exerciseResolved += 1

//8. 
let dividend: Double = 200
let divisor: Double = 8

let quotient = Int(dividend / divisor)
let newRemainder = dividend - divisor * Double(quotient)
print(quotient, newRemainder)


//9.
let degrees: Double = 360
let radians: Double = ( degrees / 180) * Double.pi


//10
let x1 = 4.6
let y1 = 2.6
let x2 = 6.4
let y2 = 12.4
let distY = (y2 - y1)
let distX = (x2 - x1)
let distance = sqrt(distX * distX + distY * distY)

//Outcome
print( (Double(exerciseResolved) / Double(exercises)) * 100)



