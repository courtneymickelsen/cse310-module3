import SwiftUI

class NumberGame {
    
    // set some variables for use later
    var correctNumber:Int = 0
    var userGuess:Int = 1000

    // setup the game
    func start(){
        // get a random number
        self.correctNumber = Int.random(in: 1...500)

        // beginning interface
        print("\n\n====================================================")
        print("Guess the number I'm thinking of! It's between 1 and 500...\n")
    }
    // start the game loop
    func play(){

        // while the guess isn't correct...
        while self.userGuess != self.correctNumber {

            // get the user guess and keep it in the correct variable
            print("Enter your guess: ")
            let input = Int(readLine()!)!
            self.userGuess = input

            // if it's too high...
            if self.userGuess > self.correctNumber {
            print("Too high!")
            }

            // if it's too low...
            else if self.userGuess < self.correctNumber {
                print("Too low!")
            }

            // if it's correct, end the game
            else {
                print("You got it!")
              print("====================================================")
            }
        }
    }
}

// instantiate the class and start the game
// no main function in swift, only a main file
var n = NumberGame()
n.start()
n.play()