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

class Solution {
    func compression(_ string: String) -> String {
        var solution = String()
        
        var i = 0
        while i < string.count {
            var j = i
            let firstChar = string[string.index(string.startIndex, offsetBy: i)]
            while j < string.count {
                if firstChar == string[string.index(string.startIndex, offsetBy: j)] {
                    j += 1
                } else {
                    break
                }
            }
            solution.append("\(firstChar)\(j - i)")
            i = j
        }
        return solution.count < string.count ? solution : string
    }
}


final class SolutionTests: XCTestCase {
    private var solution: Solution!
    override func setUp() {
        solution = Solution()
    }
    
    func testSolution() {
        XCTAssertEqual(solution.compression("aabcccccaaa"), "a2b1c5a3")
        XCTAssertEqual(solution.compression("ab"), "a1b1")
    }
}

SolutionTests.defaultTestSuite.run()
