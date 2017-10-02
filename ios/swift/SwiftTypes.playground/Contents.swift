//Swift is a strongly typed lang - every var has a specified type, eventhought they're nto typed out - types are implied

//Explicit declaration
var name: String = "Sydney"

print(name, "is a", type(of: name))

let pi:Double = 3.14

print(pi, "is a", type(of: pi))

var invitees:[String] = ["Sarah", "Jamison", "Roana"]
print(invitees, "is a type", type(of: invitees))

for invitee in invitees {
    print(invitee)
}


var showsByGenre:[String:String] = [
    "comedy" : "Big Lebowski",
    "action" : "Star Wars",
]

print(type(of: showsByGenre))


let num:Int = 2000000
print(type(of: num))

print("Hello World")
print(name)
print("Hello \(name)!")
