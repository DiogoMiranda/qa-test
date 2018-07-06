//
//  ScreeenAccessTest.swift
//  QATestUITests
//
//  Created by Diogo Miranda on 7/5/18.
//  Copyright © 2018 Youse. All rights reserved.
//

import XCTest

class ScreeenAccessTest: XCTestCase {
        
    var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        app.launchArguments.append("--uitesting")
        continueAfterFailure = false
    }
    
    func testScreenAcess() {
        app.launch()
        app.swipeLeft()
        app.swipeLeft()
        app/*@START_MENU_TOKEN@*/.staticTexts["page_number_3"]/*[[".staticTexts[\"3\"]",".staticTexts[\"page_number_3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["page_number_3_button"]/*[[".buttons[\"Acessar\"]",".buttons[\"page_number_3_button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
}
