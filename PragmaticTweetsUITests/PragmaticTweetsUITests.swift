//
//  PragmaticTweetsUITests.swift
//  PragmaticTweetsUITests
//
//  Created by Jason Hagglund on 6/25/15.
//  Copyright © 2015 Jason Hagglund. All rights reserved.
//

import Foundation
import XCTest

class PragmaticTweetsUITests: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSmoke() {
        let seeMyTweetsButton = app.buttons["See My Tweets"]
        let tweetItOutButton = app.buttons["Tweet It Out"]
        let twitterWebView = app.descendantsMatchingType(.Unknown)["main"].childrenMatchingType(.Unknown).elementAtIndex(3).staticTexts["@DeployMonkey"]
        XCTAssertTrue(seeMyTweetsButton.enabled, "See My Tweets Not Enabled")
        XCTAssertTrue(tweetItOutButton.enabled, "Tweet It Out Not Enabled")
        XCTAssertTrue(twitterWebView.enabled, "Twitter Web View Not Loaded")        
    }
}
