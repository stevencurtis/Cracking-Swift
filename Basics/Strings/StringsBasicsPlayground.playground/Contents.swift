import UIKit

var string = "Hello, playground"

let lowercased = string.lowercased()
print(lowercased)

let uppercased = string.uppercased()
print(uppercased)

let letters = string.filter { $0.isLetter }
print(letters)

let reversedString = String(string.reversed())
print(reversedString)

let trimmingString = " Trim me ".trimmingCharacters(in: .whitespaces)
print(trimmingString)

let replacedString = string.replacingOccurrences(of: "playground", with: "world")
print(replacedString)

let code = Character("a").asciiValue
print(code)

if let firstCharacter = "a".first, let asciiValue = firstCharacter.asciiValue {
    print("ASCII value: \(asciiValue)")
} else {
    print("No ASCII value found.")
}

if let scalar = UnicodeScalar(97) {
    let character = Character(scalar)
    print(character)
    let additionalCharacter = Character("B")
        
    let stringConcatenated = String(character) + String(additionalCharacter)
    print(stringConcatenated)
    
    let additionalScalar = UnicodeScalar("B")
    string.unicodeScalars.append(additionalScalar)
    print(string)
}

// string[1] will not work
let stringArray = Array(string)
print(stringArray[0])

let index = string.startIndex

print(string[string.startIndex])
//print(string[string.endIndex]) out of bounds error

let firstStringIndex = string.index(string.startIndex, offsetBy: 0)
print(string[firstStringIndex])

let endStringIndex = string.index(string.endIndex, offsetBy: -1)
print(string[endStringIndex])
