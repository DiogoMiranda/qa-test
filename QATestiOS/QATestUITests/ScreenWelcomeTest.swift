//
//  ScreenWelcomeTest.swift
//  QATestUITests
//
//  Created by Diogo Miranda on 7/5/18.
//  Copyright © 2018 Youse. All rights reserved.
//

import XCTest

class ScreenWelcomeTest: XCTestCase {
        
    var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        app.launchArguments.append("--uitesting")
        continueAfterFailure = false
    }
    
    func testLoginSwipeLeft() {
        app.launch()
        app.swipeLeft()
        XCTAssertTrue(app.staticTexts["Bem vindo"].exists)
    }
    
    func testScreenWelcome(){
        app.launch()
        app.swipeLeft()
        app/*@START_MENU_TOKEN@*/.staticTexts["page_number_2"]/*[[".staticTexts[\"2\"]",".staticTexts[\"page_number_2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["page_number_2_text"]/*[[".staticTexts[\"Bem vindo\"]",".staticTexts[\"page_number_2_text\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
}
