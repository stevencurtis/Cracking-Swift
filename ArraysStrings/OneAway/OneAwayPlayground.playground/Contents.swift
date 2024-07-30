import UIKit
import XCTest

// One Away: There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.

//class Solution {
//    func test(stringOne: String, stringTwo: String) -> Bool {
//        
//        if stringOne.count == stringTwo.count {
//            var errorFound = false
//            for i in 0..<stringOne.count {
//                if stringOne[stringOne.index(stringOne.startIndex, offsetBy: i)] != stringTwo[stringTwo.index(stringTwo.startIndex, offsetBy: i)] {
//                    if errorFound {
//                        return false
//                    } else {
//                        errorFound = true
//                    }
//                }
//            }
//        } else {
//            var dictionary: [Character: Int] = [:]
//
//            for i in 0..<stringOne.count {
//                dictionary[stringOne[stringOne.index(stringOne.startIndex, offsetBy: i)], default: 0] += 1
//            }
//            print(dictionary)
//            for j in 0..<stringTwo.count {
//                dictionary[stringTwo[stringTwo.index(stringTwo.startIndex, offsetBy: j)], default: 0] -= 1
//            }
//            print(dictionary)
//            
//            if (abs(dictionary.values.reduce(0, +))) <= 1 {
//                return true
//            } else {
//                return false
//            }
//        }
//        return true
//    }
//}

//class Solution {
//    func test(stringOne: String, stringTwo: String) -> Bool {
//        guard abs(stringOne.count - stringTwo.count) <= 1 else { return false }
//        var dictionary: [Character: Int] = [:]
//        
//        for i in 0..<stringOne.count {
//            dictionary[stringOne[stringOne.index(stringOne.startIndex, offsetBy: i)], default: 0] += 1
//        }
//        for j in 0..<stringTwo.count {
//            dictionary[stringTwo[stringTwo.index(stringTwo.startIndex, offsetBy: j)], default: 0] -= 1
//        }
//        if (abs(dictionary.values.reduce(0, { abs($0) + abs($1) }))) <= 2 {
//            return true
//        } else {
//            return false
//        }
//    }
//}

class Solution {
    func test(stringOne: String, stringTwo: String) -> Bool {
        // Check if the length difference is greater than 1
        guard abs(stringOne.count - stringTwo.count) <= 1 else { return false }

        // Identify longer and shorter strings
        let strings: (longer: String, shorter: String) = stringOne.count >= stringTwo.count
        ? (stringOne, stringTwo)
        : (stringTwo, stringOne)
        
        var edit = false
        var index1 = strings.longer.startIndex
        var index2 = strings.shorter.startIndex

        // Iterate through both strings
        while index1 < strings.longer.endIndex && index2 < strings.shorter.endIndex {
            if strings.longer[index1] != strings.shorter[index2] {
                // Ensure this is the first difference found
                if edit {
                    return false
                }
                edit = true
                
                // If lengths are the same, move both pointers. If not the two
                // strings are different at this point and we only move the longer pointer (taken care of below)
                if strings.longer.count == strings.shorter.count {
                    index2 = strings.shorter.index(after: index2)
                }
            } else {
                // Move the shorter string pointer if we have a match
                index2 = strings.shorter.index(after: index2)
            }
            // Always move the longer string pointer
            index1 = strings.longer.index(after: index1)
        }
        return true
    }
}


final class SolutionTest: XCTestCase {
    private var solution: Solution!
    override func setUp() {
        solution = Solution()
    }
    
    func testSolution() {
        XCTAssertEqual(solution.test(stringOne: "pale", stringTwo: "ple"), true)
        XCTAssertEqual(solution.test(stringOne: "pales", stringTwo: "pale"), true)
        XCTAssertEqual(solution.test(stringOne: "pale", stringTwo: "bale"), true)
        XCTAssertEqual(solution.test(stringOne: "pale", stringTwo: "ale"), true)
        XCTAssertEqual(solution.test(stringOne: "pale", stringTwo: "Spale"), true)
        XCTAssertEqual(solution.test(stringOne: "pale", stringTwo: "bake"), false)
        XCTAssertEqual(solution.test(stringOne: "abcde", stringTwo: "abfde"), true)
        XCTAssertEqual(solution.test(stringOne: "pale", stringTwo: "paless"), false)
        XCTAssertEqual(solution.test(stringOne: "abcdef", stringTwo: "abcdf"), true)
        XCTAssertEqual(solution.test(stringOne: "test", stringTwo: "test"), true)
        XCTAssertEqual(solution.test(stringOne: "teat", stringTwo: "tes"), false)
        XCTAssertEqual(solution.test(stringOne: "aabbcc", stringTwo: "abbcc"), true)
        XCTAssertEqual(solution.test(stringOne: "abcd", stringTwo: "efgh"), false)
        XCTAssertEqual(solution.test(stringOne: "apple", stringTwo: "applf"), true)
    }
}

SolutionTest.defaultTestSuite.run()
