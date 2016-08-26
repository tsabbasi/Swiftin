// Nate Grant: Soccer Coordinator Project - 01

/*
 
 // PART 1: Choose an appropriate data type to store information for each player (Name, Team, Height, and Guardian Name). Then create an empty collection variable to hold all the players’ data.
 
 
 PART 2: Assign all 18 players to teams, experience level on all teams must be the same. Store each teams player in its own new colllection variable.
 
 
 PART 3: Create Logic that generates a letter for all of the players guardians, letting them know which team their child has been placed on and when they should attend their first team team practice.
 
 Data: (player name, team name, guardians’ names, practice date/time)
 
 Practice Times (Dragons - March 17, 1pm, Sharks - March 17, 3pm, Raptors - March 18, 1pm)
 
 */

import Foundation







// PART 1: Choose an appropriate data type to store information for each player (Name, Team, Height, and Guardian Name). Then create an empty collection variable to hold all the players’ data.









// Individual Players Data


let player1 = ["name": "Joe Smith",
               "height": 42,
               "experience": true,
               "guardian": "Jim and Jan Smith"]

let player2 = ["name": "Jill Tanner",
               "height": 36,
               "experience": true,
               "guardian": "Clara Tanner"]

let player3 = ["name": "Bill Bon",
               "height": 43,
               "experience": true,
               "guardian": "Sara and Jenny Bon"]

let player4 = ["name": "Eva Gordon",
               "height": 45,
               "experience": false,
               "guardian": "Wendy and Mike Gordon"]

let player5 = ["name": "Matt Gill",
               "height": 40,
               "experience": false,
               "guardian": "Charles and Sylvia Gill"]

let player6 = ["name": "Kimmy Stein",
               "height": 41,
               "experience": false,
               "guardian": "Bill and Hillary Stein"]

let player7 = ["name": "Sammy Adams",
               "height": 45,
               "experience": false,
               "guardian": "Jeff Adams"]

let player8 = ["name": "Karl Saygan",
               "height": 42,
               "experience": true,
               "guardian": "Heather Bledsoe"]

let player9 = ["name": "Suzane Greenberg",
               "height": 44,
               "experience": true,
               "guardian": "Henrietta Dumas"]

let player10 = ["name": "Sal Dali",
                "height": 41,
                "experience": false,
                "guardian": "Gala Dali"]

let player11 = ["name": "Joe Kavalier",
                "height": 39,
                "experience": false,
                "guardian": "Sam and Elaine Kavalier"]

let player12 = ["name": "Ben Finkelstein",
                "height": 44,
                "experience": false,
                "guardian": "Aaron and Jill Finkelstein"]

let player13 = ["name": "Diego Soto",
                "height": 41,
                "experience": true,
                "guardian": "Robin and Sarika Soto"]

let player14 = ["name": "Chloe Alaska",
                "height": 47,
                "experience": false,
                "guardian": "David and Jamie Alaska"]

let player15 = ["name": "Arnold Willis",
                "height": 43,
                "experience": false,
                "guardian": "Claire Willis"]

let player16 = ["name": "Phillip Helm",
                "height": 44,
                "experience": true,
                "guardian": "Thomas Helm and Eva Jones"]

let player17 = ["name": "Les Clay",
                "height": 42,
                "experience": true,
                "guardian": "Wynonna Brown"]

let player18 = ["name": "Herschel Krustofski",
                "height": 45,
                "experience": true,
                "guardian": "Hyman and Rachel Krustofski"]




// An array to store all of the players. Var because of changeability

var playerArray = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]




// Team Variables. It's a variable if we decide to add more players to the roster

var sharks: [[String:AnyObject]] = []
var dragons: [[String:AnyObject]] = []
var raptors: [[String:AnyObject]] = []

let teams = ["Sharks, Dragons, Raptors"]

// Team Practice Constants

let sharksFirstGame = "March 17, 3PM"
let dragonsFirstGame = "March 17, 1PM"
let raptorsFirstGame = "March 18, 1PM"

// Experience Variables

var experiencedPlayers: [[String:AnyObject]] = []
var inexperiencedPlayers: [[String:AnyObject]] = []


// Function to count experienced/non-experienced players


func countExperience() {
    
    for player in playerArray {
        
        if player["experience"] == true {
            
            experiencedPlayers.append(player)
            
            
        } else {
            
            inexperiencedPlayers.append(player)
        }
        
    }
    
}



// Calling The Function


countExperience()

// Printing the experienced and inexperienced player arrays

print(experiencedPlayers)
print(inexperiencedPlayers)


// PART 2: Assign all 18 players to teams, experience level on all teams must be the same. Store each teams player in its own new colllection variable.


func sortExperiencedPlayers() {
    
    var index = 0
    
    while index < experiencedPlayers.count  {
        
        if sharks.count < 3 {
            
            sharks.append(experiencedPlayers[index])
            
        }else if raptors.count < 3 {
            
            raptors.append(experiencedPlayers[index])
            
        }else if dragons.count < 3 {
            
            dragons.append(experiencedPlayers[index])
        }
        
        index += 1
    }
}



sortExperiencedPlayers() 



// Creating a function to sort the inexperienced teams and adding them(.append) to each team

// I was struggling to figure out how to sort the InExperiencedPlayers because I had reused the same function for my experienced players. But the if statement would only run(append each new player) if the count was < 3. Which it wasn't after I had appended the experiencedPlayers. To fix it, I changed the count to < 6.


func sortInexperiencedPlayers() {
    
    var index = 0
    
    while index < inexperiencedPlayers.count {
        
        if sharks.count < 6 {
            
            sharks.append(inexperiencedPlayers[index])
            
        }else if raptors.count < 6 {
            
            raptors.append(inexperiencedPlayers[index])
            
        }else if dragons.count < 6 {
            
            dragons.append(inexperiencedPlayers[index])
        }
        
        index += 1
    }
}


sortInexperiencedPlayers()


// Printing each teams String to show players

print("\(sharks)\n")
print("\(dragons)\n")
print("\(raptors)\n")


// PART 3: Create Logic that generates a letter for all of the players guardians, letting them know which team their child has been placed on and when they should attend their first team team practice.



// Function declared to print each players letters using their guardians names and player names by accessing each individual players dictionary key


func printPlayerLetters() {
    
    
    for individualPlayer in sharks {
        
        print("Hello \(individualPlayer["guardian"]!), your child \(individualPlayer["name"]!) is playing their first game with the Sharks! Join us on \(sharksFirstGame)")
        
    }
    
    for individualPlayer in dragons {
        
        print("Hello \(individualPlayer["guardian"]), your child \(individualPlayer["name"]) is playing their first game with the Dragons! Join us on \(dragonsFirstGame)")
        
    }
    
    for individualPlayer in raptors {
        
        print("Hello \(individualPlayer["guardian"]), your child \(individualPlayer["name"]) is playing their first game with the Raptors! Join us on \(raptorsFirstGame)")
        
    }
}



printPlayerLetters()