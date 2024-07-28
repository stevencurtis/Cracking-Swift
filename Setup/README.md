# Setup projects with tests
##

## Mac Tests 
Add Unit Testing Bundle to project. Give it a suitable name (ProjectTests).

Add the main file in the test target. Build Phases, Compile Source + and choose the swift file that should be tested.

## Playground Tests

Import `import XCTest`. Create a final class that inherits from `XCTestCase`.

Write the tests in your Test class.

Example in 1.2CheckPermutation
