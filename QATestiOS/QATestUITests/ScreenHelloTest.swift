//
//  ScreenUITests.swift
//  QATestUITests
//
//  Created by Diogo Miranda on 7/4/18.
//  Copyright © 2018 Youse. All rights reserved.
//

import XCTest

class ScreenHelloTest: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        app.launchArguments.append("--uitesting")
        continueAfterFailure = false
    }
    
    func testScreenHello() {
        app.launch()
        app/*@START_MENU_TOKEN@*/.staticTexts["page_number_1"]/*[[".staticTexts[\"1\"]",".staticTexts[\"page_number_1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["page_number_1_text"]/*[[".staticTexts[\"Oi\"]",".staticTexts[\"page_number_1_text\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
}
