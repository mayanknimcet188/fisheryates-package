import FisherYatesTests
import XCTest 

var tests: [XCTestCaseEntry] = [XCTestCaseEntry]() 
tests += FisherYatesTests.allTests() 
XCTMain(tests)