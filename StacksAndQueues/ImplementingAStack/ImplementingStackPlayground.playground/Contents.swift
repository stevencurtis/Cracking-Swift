import UIKit
import XCTest

var greeting = "Hello, playground"


final class StackArray<T> {
    var backingArray: [T] = []
    
    func push(value: T) {
        backingArray.append(value)
    }
    
    func pop() -> T? {
        backingArray.popLast()
    }
    
    func peek() -> T? {
        backingArray.last
    }
    
    func isEmpty() -> Bool {
        backingArray.isEmpty
    }
}

final class StackTests: XCTestCase {
    var stack: StackArray<Int>!
    override func setUp() {
        stack = StackArray()
    }
    
    func testStack() {
        XCTAssertEqual(stack.isEmpty(), true)
        stack.push(value: 1)
        stack.push(value: 2)
        XCTAssertEqual(stack.peek(), 2)
        XCTAssertEqual(stack.pop(), 2)
        XCTAssertEqual(stack.isEmpty(), false)
    }
}

StackTests.defaultTestSuite.run()
