//: Random number generator

import Foundation

/* Arc4random best random generator */

//Random number between 0 and 9
var randomNumber = arc4random_uniform(7)


//========
//Invitees
//=======
// var becuase bool value will change

var invitees = [
    (name: "Sara", alreadyInvited: false ),
    (name: "Serena", alreadyInvited: false ),
    (name: "Tea", alreadyInvited: false ),
    (name: "Krista", alreadyInvited: false ),
    (name: "Mandy", alreadyInvited: false ),
    (name: "Lea", alreadyInvited: false ),
    (name: "Lois", alreadyInvited: false ),
]


//=============
//Shows by Genre
//=============

//Constant beicause it will not change

let showByGenre = [
    "comedy" : "Seinfeld",
    "scifi" : "Star Wars",
    "drama" : "Enigma",
    "action": "Spiderman"
]

//============
//Helper funcs
//============

/*
for invitee in invitees
{
    var index = Int(arc4random_uniform(UInt32(invitees.count)))
    print("\(invitees[index].name)")
}
*/
 
func inviteAtIndex
    (
    index: Int,
    toBringToSHow show: (genre: String, name: String)
    )
{
    let name = invitees[index].name
    print("\(name), bring a \(show.name) show")
    
    invitees[index].alreadyInvited = true
}


func inviteToBringThemselvesAtIndex(index: Int)
{
    let invitee = invitees[index]
    print("\(invitee.name), just bring yourself")
    
    invitees[index].alreadyInvited = true
}

//============
//Core logic
//============


for show in showByGenre
{
    var inviteeIndex: Int
    repeat {
        inviteeIndex = Int(arc4random_uniform(UInt32(invitees.count)))
    } while invitees[inviteeIndex].alreadyInvited
    
    inviteAtIndex(inviteeIndex: Int, toBringToSHow: (show))
}

for index in 0 ..< invitees.count
{
    let invitee = invitees[index]
    if !invitee.alreadyInvited {
        inviteToBringThemselvesAtIndex(index: <#T##Int#>)
    }
    
}

