//
//  UtilityNotificationTests.swift
//  InAppNotificationFrameworkTests
//
//  Created by Fodé Guirassy on 23/01/2018.
//  Copyright © 2018 Henri Gil. All rights reserved.
//

import XCTest
@testable import InAppNotificationFramework


class UtilityNotificationTests: XCTestCase {
    
    
    
    override func setUp() {
        super.setUp()
        
        let img = UIImageView
        
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testDownloadNotificationsFail() {
        let imgView : UIImageView
        
        let expectation = XCTestExpectation(description: "Download image from url")
        
        
        //after test
        expectation.fulfill()
        
        wait(for:[exception], timeout:10.0)
        
    }
    
    func testExample() {
        let hello = "hello"
        XCTAssertEqual(hello, hello)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
