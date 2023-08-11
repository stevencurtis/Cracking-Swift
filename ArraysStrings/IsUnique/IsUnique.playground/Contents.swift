import UIKit

let myString = "Hello"
let set = Set(myString)
print(set)

for i in 0..<myString.count - 1 {
    for j in i + 1..<myString.count {
        if myString[myString.index(myString.startIndex, offsetBy: i)]
            ==
           myString[myString.index(myString.startIndex, offsetBy: j)] {
            // false
        }
    }
}

let stringArray = Array(myString)

for i in 0..<stringArray.count - 1 {
    for j in i + 1..<stringArray.count - 1 {
        if stringArray[i] == stringArray[j] {
            print("false \(stringArray[i]) \(stringArray[j]))")
        }
    }
}

var freq: [String.Element: Int] = [:]
for i in 0..<stringArray.count - 1 {
    if freq[stringArray[i]] ?? 0 > 0 {
        print("false")
    }
    freq[stringArray[i], default: 0] += 1
}




var booleanArray = Array(repeating: false, count: 256)

//for i in 0..<myString.count - 1 {
//    let character = myString[myString.index(myString.startIndex, offsetBy: i)]
//    if let value = Unicode.Scalar(String(character))?.value {
//        if booleanArray[Int(value)] == true {
//            print("false")
//        }
//        booleanArray[Int(value)] = true
//    }
//}


//for i in 0..<myString.count - 1 {
//    let character = stringArray[i]
//    if let value = Unicode.Scalar(String(character))?.value {
//        if booleanArray[Int(value)] == true {
//            print("false")
//        }
//        booleanArray[Int(value)] = true
//    }
//}


for i in 0..<myString.count - 1 {
    let character = myString[myString.index(myString.startIndex, offsetBy: i)]
    if let value = character.asciiValue {
        if booleanArray[Int(value)] == true {
            print("false")
        }
        booleanArray[Int(value)] = true
    }
}

for i in 0..<myString.count - 1 {
    let character = stringArray[i]
    if let value = character.asciiValue {
        if booleanArray[Int(value)] == true {
            print("false")
        }
        booleanArray[Int(value)] = true
    }
}

let regex = /^(?:([A-Za-z])(?!\1))*$/
"Helo".firstMatch(of: regex) != nil // true
"Hello".firstMatch(of: regex) != nil // false
"HeloH".firstMatch(of: regex) != nil // false


let lowercaseStringArray = Array("hello")
var checker: UInt32 = 0
for i in 0..<lowercaseStringArray.count {
    if let indexValue = lowercaseStringArray[i].asciiValue, let aValue = Character("a").asciiValue {
        let index = indexValue - aValue
        if ((checker & (1 << index)) > 0) {
            print("false")
        }
        checker = checker | (1 << index)
    }
}

