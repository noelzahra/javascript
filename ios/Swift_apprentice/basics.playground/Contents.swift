//Swift Apprentice

import Foundation

func welcome(val: String, num: UInt16) ->String
{
    return "Hi \(val) your soce is \(num)"
}


func generateRandom(num1: UInt32, num2: UInt32)
{
    var i = num1
    while i <= num2 {
        let random = arc4random_uniform((num2 - num1) + 1) + num1
        print("\(i) generates random: \(random)")
        i += 1
        
    }
}

generateRandom(num1: 60, num2: 70)



print("\n===========\nAddition\n===========\n")

func add(num1: UInt8, num2: UInt8)
{
    print("Addition \(num1) + \(num2): \(UInt16(num1 + num2)) ")
}

add(num1: 44, num2: 59)


print("\n===========\nSubtract\n===========\n")
func subtract(num1: UInt16, num2: UInt16)
{
    let result = (num1 >= num2) ? num1 - num2 : num2 - num1
    print("Subtraction \(num1) - \(num2): \(result)")
}

subtract(num1: 80, num2: 200)

print("\n===========\nMultiply\n===========\n")
func multiply(num1: UInt16, num2: UInt16)
{
    let result = UInt16(num1 * num2)
    print("Multiplication \(num1) x \(num2): \(result)")
}

multiply(num1: 90, num2: 20)

print("\n===========\nDivide\n===========\n")
func divide(num1: UInt16, num2: UInt16)
{
    let result = ( num1 >= num2 ) ? num1 / num2 : num2 / num1
    print("Division between \(num1) / \(num2): \(result)")
}

divide(num1: 99, num2: 30)


print("\n===========\nModulus\n===========\n")
func modulus(num1: UInt8, num2: UInt8)
{
    let result = (num1 >= num2) ? num1 % num2 : num2 % num1
    print("Modulus \(num1) % \(num2): \(result)")
}

modulus(num1: 40, num2: 2)

print("\n===========\nFloats\n===========\n")
func divideFloat(float1: Double, float2: Double) -> String
{
    let result = (float1 >= float2) ? float1 / float2 : float2 / float1
    return "Division between floats \(float1) \(float2): \(Double(result))"
}

print(divideFloat(float1: 261.80, float2: 161.80))


print("\n===========\nShift operator\n===========\n")
func shift(num1: UInt8, num2: UInt8) ->UInt8
{
    return num1 << num2
}

let shiftOperator = shift (num1: 8, num2: 4)
print("Shift operators: \(shiftOperator)")


print("\n===========\nMath functions\n===========\n")

let sineAngle = sin(45 * Double.pi / 180)
let cosAngle = cos(135 * Double.pi / 180)
let seuareRoot = sqrt(9.9)
let bigestNum = max(5, 10)
let smallestNum = min(-5, -10)
