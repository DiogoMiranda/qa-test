//
//  LoginSucessUITests.swift
//  QATestUITests
//
//  Created by Diogo Miranda on 7/4/18.
//  Copyright © 2018 Youse. All rights reserved.
//

import XCTest

@testable import QATest

class LoginSucessTest: XCTestCase {
    
    var app: XCUIApplication!
    
    let defaultAnimationTimeIos: TimeInterval = 0.4
    let successEmail = "youser1@youse.com.br"
    
    override func setUp() {
        app = XCUIApplication()
        app.launchArguments.append("--uitesting")
        continueAfterFailure = false
    }

    override func tearDown() {
        super.tearDown()
        continueAfterFailure = true
    }
    
    func testLoginSucessWelcome() {
        app.launch()
        app.swipeLeft()
        app.swipeLeft()
        
        app/*@START_MENU_TOKEN@*/.buttons["page_number_3_button"]/*[[".buttons[\"Acessar\"]",".buttons[\"page_number_3_button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.textFields["email_textfield"]/*[[".otherElements[\"email_view\"].textFields[\"email_textfield\"]",".textFields[\"email_textfield\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["email_textfield"].typeText(successEmail)
        app.buttons["verify_email_button"].tap()
        app.secureTextFields["password_textfield"].tap()
        app.secureTextFields["password_textfield"].typeText("12345678")
        app.buttons["login_button"].tap()
        XCTAssertTrue(app.staticTexts["Seja bem vindo, youser1@youse.com.br!"].exists)
    }
    
}
