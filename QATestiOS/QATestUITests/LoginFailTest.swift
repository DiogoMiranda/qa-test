//
//  LoginError.swift
//  QATestUITests
//
//  Created by Diogo Miranda on 7/4/18.
//  Copyright © 2018 Youse. All rights reserved.
//

import XCTest

class LoginFailTest: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        app.launchArguments.append("--uitesting")
        continueAfterFailure = false
    }
    
    func testLoginEmailEmpty() {
        app.launch()
        app.swipeLeft()
        app.swipeLeft()
        app/*@START_MENU_TOKEN@*/.buttons["page_number_3_button"]/*[[".buttons[\"Acessar\"]",".buttons[\"page_number_3_button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.textFields["email_textfield"]/*[[".otherElements[\"email_view\"].textFields[\"email_textfield\"]",".textFields[\"email_textfield\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["verify_email_button"]/*[[".otherElements[\"email_view\"]",".buttons[\"Prosseguir\"]",".buttons[\"verify_email_button\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
    
    func testLoginEmailError() {
        app.launch()
        app.swipeLeft()
        app.swipeLeft()
        app/*@START_MENU_TOKEN@*/.buttons["page_number_3_button"]/*[[".buttons[\"Acessar\"]",".buttons[\"page_number_3_button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.textFields["email_textfield"]/*[[".otherElements[\"email_view\"].textFields[\"email_textfield\"]",".textFields[\"email_textfield\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["email_textfield"].typeText("diogo@teste.com")
        app.buttons["verify_email_button"].tap()
        let emailErrorLabelStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["email_error_label"]/*[[".otherElements[\"email_view\"]",".staticTexts[\"Email Inválido\"]",".staticTexts[\"email_error_label\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        emailErrorLabelStaticText.tap()
        emailErrorLabelStaticText.swipeRight()
    }
}
