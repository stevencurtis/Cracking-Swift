import XCTest

final class MyTest: XCTestCase {
    func testExample() throws {
        let sol = MyCode()
        XCTAssertEqual(sol.spiralOrder([[]]), [])
        XCTAssertEqual(sol.spiralOrder([[1]]), [1])
        XCTAssertEqual(sol.spiralOrder([[1,2],[3,4]]), [1,2,4,3])
        XCTAssertEqual(sol.spiralOrder([[1,2,3],[4,5,6],[7,8,9]]), [1,2,3,6,9,8,7,4,5])
        XCTAssertEqual(sol.spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]]), [1,2,3,4,8,12,11,10,9,5,6,7])
        XCTAssertEqual(sol.spiralOrder([[6,9,7]]), [6,9,7])
    }
}
