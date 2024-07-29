import UIKit
import XCTest

//class Solution {
//    func permutation(permutation: String) -> Bool {
//        var candidate = permutation.lowercased()
//        candidate.removeAll(where: { $0 == Character(" ") })
//        var dictionary: [Character: Int] = [:]
//        for character in candidate {
//            dictionary[character, default: 0] += 1
//        }
//        if candidate.count % 2 == 0 {
//            // even so we need an even count of each character
//            return dictionary.values.allSatisfy{ $0 % 2 == 0 }
//        } else {
//            // odd so we need 1 count of each character
//            
//            if (dictionary.values.filter {
//                $0 % 2 == 1
//            }.count) == 1
//            {
//                return true
//            } else {
//                return false
//            }
//        }
//    }
//}

//class Solution {
//    func permutation(permutation: String) -> Bool {
//        var candidate = permutation.lowercased().filter{ $0.isLetter }
//        var dictionary: [Character: Int] = [:]
//        for character in candidate {
//            dictionary[character, default: 0] += 1
//        }
//        let oddNumberCharacters = dictionary.values.filter {
//            $0 % 2 == 1
//        }
//        if oddNumberCharacters.count == 1 || oddNumberCharacters.count == 0
//        {
//            return true
//        } else {
//            return false
//        }
//    }
//}

class Solution {
    func permutation(permutation: String) -> Bool {
        false
    }
}

final class PermutationTest: XCTestCase {
    private (set) var solution: Solution!
    override func setUp() {
        solution = Solution()
    }
    func testPermutation() {
        XCTAssertEqual(solution.permutation(permutation: "Tact Coa"), true)
        XCTAssertEqual(solution.permutation(permutation: "ABBA"), true)
        XCTAssertEqual(solution.permutation(permutation: "madam"), true)
        XCTAssertEqual(solution.permutation(permutation: "nurses run"), true)
        XCTAssertEqual(solution.permutation(permutation: ""), true)
        XCTAssertEqual(solution.permutation(permutation: " "), true)
        XCTAssertEqual(solution.permutation(permutation: "a"), true)
    }
}

PermutationTest.defaultTestSuite.run()
