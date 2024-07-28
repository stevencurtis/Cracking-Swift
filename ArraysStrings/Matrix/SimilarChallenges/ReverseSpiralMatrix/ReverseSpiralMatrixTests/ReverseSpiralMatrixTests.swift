import XCTest

final class MyTest: XCTestCase {
    func testReverseSpiralOrder() throws {
        let sol = MyCode()
        XCTAssertEqual(sol.spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]), [10,11,7,6,5,9,13,14,15,16,12,8,4,3,2,1])
        XCTAssertEqual(sol.spiralOrder([[1,2,3,4,5,6],[7,8,9,10,11,12],[13,14,15,16,17,18]]), [11,10,9,8,7,13,14,15,16,17,18,12,6,5,4,3,2,1])
    }
}
