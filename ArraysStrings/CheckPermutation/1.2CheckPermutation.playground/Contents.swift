import UIKit
import XCTest

func naiveCheck(_ first: String, _ second: String) -> Bool {
    // loop through first and second Strings, ticking off the matched characters on the way
    // because of the double loop the time complexity will be O(N²)
    if (first.count != second.count) {return false}
    var count = 0
    for fchar in first {
        for schar in second {
            if (schar == fchar) { count += 1; break }
        }
    }
    return count == first.count
}

func setCheck(_ first: String, _ second: String) -> Bool {
    var firstSet = Set<Character>()
    var secondSet = Set<Character>()
    
    for  char in first {
        firstSet.insert(char)
    }
    for char in second {
        secondSet.insert(char)
    }
    return firstSet==secondSet
    
}

final class characterTests: XCTestCase {
    func testNaive() {
        measure {
            XCTAssertEqual(naiveCheck("ab", "ba"), true)
            XCTAssertEqual(naiveCheck("aa","BB"), false)
        }
    }
    
    func testSet() {
        measure {
            XCTAssertEqual(setCheck("ab", "ba"), true)
            XCTAssertEqual(setCheck("aa","BB"), false)
        }
    }
    
}

//uniqueCharsWithArray("He, playground")
//uniqueCharsWithArray("AAAAaaaaa")
//naiveCheck("ab", "ba")
characterTests.defaultTestSuite.run()
