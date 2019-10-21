import UIKit

// Question One

// Write a function named double(_:) that takes in a Double and returns that number times two

// Your function here


let testCasesOne: [(Double, Double)] = [
    (input: 3.0, expectedOutput: 6.0),
    (input: 0, expectedOutput: 0),
    (input: -2, expectedOutput: -4),
    (input: 99, expectedOutput: 198)
]

func double(Double: Double) -> Double {
    let result = Double * 2
    return result
}
double(Double: 3.0)
double(Double: 0)
double(Double: -2)
double(Double: 99)

for (input, expectedOutput) in testCasesOne {
    let output = double(Double: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}



// Question Two

// Write a function named smallest(of:and:) that takes in two Doubles and returns the smaller number

// Your function here

let testCasesTwo: [(Double, Double, Double)] = [
    (inputOne: 8.0, inputTwo: 3.0, expectedOutput: 3.0),
    (inputOne: 0, inputTwo: 0, expectedOutput: 0),
    (inputOne: -5, inputTwo: -3, expectedOutput: -5),
    (inputOne: 2.3, inputTwo: 2.03, expectedOutput: 2.03)
]

func smallest(of inputOne: Double, and inputTwo: Double) -> Double {
    if inputOne >= inputTwo {
        return inputTwo
    } else {
        return inputOne
    }
}
    print(smallest(of: 2.3, and: 2.03))

for (inputOne, inputTwo, expectedOutput) in testCasesTwo {
    let output = smallest(of: inputOne, and: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
}

// Question Three

// Write a function named smallestValue(in:) that takes in an array of Doubles and returns the smallest Double

// Your function here

func smallestValue(in array: [Double]) -> Double {
    var smallestDouble = array[0]
    for i in array {
        var isSmallest = true
        for j in array {
            if i > j {
                isSmallest = false
            }
        }
        if isSmallest {
            smallestDouble = i
        }
    }
    return smallestDouble
}

print(smallestValue(in: [-4,-59,-348,-34,-4]))

let testCasesThree: [([Double], Double)] = [
    (input: [1.0,2,3,4,5,5], expectedOutput: 1.0),
    (input: [6,5,4,3,2,1], expectedOutput: 1),
    (input: [0,0,0,0,0,0,0,0,0,0], expectedOutput: 0),
    (input: [-4,-59,-348,-34,-4], expectedOutput: -348),
]

for (input, expectedOutput) in testCasesThree {
    let output = smallestValue(in: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}


// Question Four

// Write a function named occurrances(of:in:) that counts how many characters in a String match a specific character.

// Your function here

func occurrances(of char: Character, in word: String) -> Int {
    let arrayOfChar = Array(word)
    var countOfChar = 0
    for letter in arrayOfChar {
        if letter == char {
            countOfChar += 1
        }
    }
    return countOfChar
}
print(occurrances(of: "E", in: "cApItAlS aRe DiFfErEnT"))

let testCasesFour: [(Character, String, Int)] = [
    (inputOne: "l", inputTwo: "hello", expectedOutput: 2),
    (inputOne: "r", inputTwo: "hello world!", expectedOutput: 1),
    (inputOne: " ", inputTwo: "Now with some spaces", expectedOutput: 3),
    (inputOne: "E", inputTwo: "cApItAlS aRe DiFfErEnT", expectedOutput: 2),
]

for (inputOne, inputTwo, expectedOutput) in testCasesFour {
    let output = occurrances(of: inputOne, in: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
}


// Question Five

// Write a function called removeNils(from:) that takes an array of optional Ints and returns an array with them unwrapped with any nil values removed.

// Your function here
var arrayWithoutNil = [Int]()

func removeNils(from optionalArray: [Int?]) -> [Int] {
    for integer in optionalArray {
        if integer != nil {
            let integerInt = integer ?? 0
           arrayWithoutNil.append(integerInt)
        }
    }
    return arrayWithoutNil
}
print(removeNils(from: []))


let testCasesFive: [([Int?], [Int])] = [
    (input: [1, nil, 9, nil, 10, nil], expectedOutput: [1,9,10]),
    (input: [1, 2, 3], expectedOutput: [1,2,3]),
    (input: [nil], expectedOutput: []),
    (input: [], expectedOutput: []),
]

for (input, expectedOutput) in testCasesFive {
    let output = removeNils(from: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}

