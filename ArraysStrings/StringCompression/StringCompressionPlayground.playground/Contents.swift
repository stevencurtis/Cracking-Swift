import UIKit
import XCTest

//class Solution {
//    func compression(_ string: String) -> String {
//        var solution = String()
//        
//        var i = 0
//        while i < string.count {
//            var j = i
//            let firstChar = string[string.index(string.startIndex, offsetBy: i)]
//            while j < string.count {
//                if firstChar == string[string.index(string.startIndex, offsetBy: j)] {
//                    j += 1
//                } else {
//                    break
//                }
//            }
//            solution.append("\(firstChar)\(j - i)")
//            if j > i {
//                i = j
//            } else {
//                i += 1
//            }
//        }
//        return solution.count < string.count ? solution : string
//    }
//}

//class Solution {
//    func compression(_ string: String) -> String {
//        var solution = String()
//        
//        var i = 0
//        while i < string.count {
//            var j = i
//            let firstChar = string[string.index(string.startIndex, offsetBy: i)]
//            while j < string.count {
//                if firstChar == string[string.index(string.startIndex, offsetBy: j)] {
//                    j += 1
//                } else {
//                    break
//                }
//            }
//            solution.append("\(firstChar)\(j - i)")
//            i = j
//        }
//        return solution.count < string.count ? solution : string
//    }
//}

final class Solution {
    func compression(_ string: String) -> String {
        let str = Array(string)
        var i = 0
        var j = 0
        var result = ""
        while i < str.count {
            var count = 0
            let iLetter = str[i]
            while j < str.count && iLetter == str[j] {
                count += 1
                j += 1
            }
            result.append("\(str[i])\(count)")
            i = j
        }
        return result.count < string.count ? result : string
    }
}

final class SolutionTests: XCTestCase {
    private var solution: Solution!
    override func setUp() {
        solution = Solution()
    }
    
    func testSolution() {
        XCTAssertEqual(solution.compression("aabcccccaaa"), "a2b1c5a3")
        XCTAssertEqual(solution.compression("ab"), "ab")
    }
}

SolutionTests.defaultTestSuite.run()
