//: Playground - noun: a place where people can play

import UIKit

var numberOfEachValue = [Int](count: 6, repeatedValue: 0)

// Die Rolling Code

func diceRoll() -> Int {
    return Int(arc4random_uniform(6) + 1)
}

func incrementValue(value: Int) {
    guard value >= 1 && value <= 6 else { return }
    numberOfEachValue[value - 1] += 1
}

func printValues() {
    for (index, value) in numberOfEachValue.enumerate() {
        print("Number of \(index + 1): \(value)")
    }
}

func populateValues(numberOfValues:Int) -> [Int] {
    var randomNumbers:[Int] = []
    
    for _ in 0..<numberOfValues {
        let value = diceRoll()
        randomNumbers.append(value)
        incrementValue(value)
    }
    
    return randomNumbers
}

populateValues(20)

printValues()


// Graphics Code
