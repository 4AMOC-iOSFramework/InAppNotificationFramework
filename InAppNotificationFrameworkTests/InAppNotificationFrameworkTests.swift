//
//  InAppNotificationFrameworkTests.swift
//  InAppNotificationFrameworkTests
//
//  Created by Henri Gil on 17/01/2018.
//  Copyright © 2018 Henri Gil. All rights reserved.
//

import XCTest
@testable import InAppNotificationFramework

class InAppNotificationFrameworkTests: XCTestCase {
    
    let notificationView = NotificationView()
    
    func test_bad_isUrl(){
        let b = notificationView.isUrl(urlString: "fezf")
        XCTAssertEqual(b, false)
    }
    
    func test_http_isUrl(){
        let b = notificationView.isUrl(urlString: "http://facebook.com")
        XCTAssertEqual(b, true)
    }
    
    func test_https_isUrl(){
        let b = notificationView.isUrl(urlString: "https://facebook.com")
        XCTAssertEqual(b, true)
    }
    
    func test_empty_isUrl(){
        let b = notificationView.isUrl(urlString: "")
        XCTAssertEqual(b, false)
    }
    
    
    func testZero(){
        XCTAssertEqual(0.isPair, true)
    }
    
    func test1(){
        XCTAssertEqual(1.isPair, false)
    }
    
    func test2(){
        XCTAssertEqual(2.isPair, true)
    }
    
    func test440(){
        XCTAssertEqual(440.isPair, true)
    }
    
    func testNeg(){
        XCTAssertEqual((-1).isPair, false)
    }
    
    func testNeg2(){
        XCTAssertEqual((-2).isPair, true)
    }
    
}
