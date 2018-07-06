//
//  LoginFailUITests.swift
//  QATestUITests
//
//  Created by Diogo Miranda on 7/4/18.
//  Copyright © 2018 Youse. All rights reserved.
//

import XCTest

class LoginFailUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    let app = XCUIApplication()
    let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
    element.swipeLeft()
    element.swipeLeft()
    app/*@START_MENU_TOKEN@*/.buttons["page_number_3_button"]/*[[".buttons[\"Acessar\"]",".buttons[\"page_number_3_button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app/*@START_MENU_TOKEN@*/.textFields["email_textfield"]/*[[".otherElements[\"email_view\"].textFields[\"email_textfield\"]",".textFields[\"email_textfield\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app/*@START_MENU_TOKEN@*/.buttons["verify_email_button"]/*[[".otherElements[\"email_view\"]",".buttons[\"Prosseguir\"]",".buttons[\"verify_email_button\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
    func whenEmailIsFalse() {
        
    }
    
}
