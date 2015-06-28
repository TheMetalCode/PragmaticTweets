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
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        print (app.buttons["Tweet It Out"].exists)
        app.buttons["Tweet It Out"].tap()
        print (app.navigationBars["Twitter"].exists)
        app.tables.textViews["I just finished the first project in iOS 8 SDK Development. #pra"].tap()
        app.navigationBars["Twitter"].buttons["Cancel"].tap()
        
    }
    
}
