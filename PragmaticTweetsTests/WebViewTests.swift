//
//  WebViewTests.swift
//  PragmaticTweets
//
//  Created by Jason Hagglund on 6/28/15.
//  Copyright © 2015 Jason Hagglund. All rights reserved.
//

import XCTest
import PragmaticTweets

class WebViewTests: XCTestCase, UIWebViewDelegate {
    
    var loadedWebViewExpectation : XCTestExpectation?
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAutomaticWebLoad() {
        if let viewController = UIApplication.sharedApplication().windows[0].rootViewController as? ViewController {
            viewController.twitterWebView.delegate = self
            loadedWebViewExpectation = expectationWithDescription("web view auto-load test")
            waitForExpectationsWithTimeout(5.0, handler: nil)
        } else {
            XCTFail("couldn't get root view controller")
        }
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        XCTFail("web view load failed")
        loadedWebViewExpectation!.fulfill()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        if let webViewContents = webView.stringByEvaluatingJavaScriptFromString("document.documentElement.textContent") {
            if webViewContents != "" {
                loadedWebViewExpectation!.fulfill()
            }
        }
    }
    
}
