//
//  QATestUITests.swift
//  QATestUITests
//
//  Created by Diogo Miranda on 7/3/18.
//  Copyright © 2018 Youse. All rights reserved.
//

import XCTest

class QATestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    

    func testLoginSucess() {
        let app = XCUIApplication()
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        
        element.swipeLeft()
        element.swipeLeft()
        app/*@START_MENU_TOKEN@*/.buttons["page_number_3_button"]/*[[".buttons[\"Acessar\"]",".buttons[\"page_number_3_button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
       
        app/*@START_MENU_TOKEN@*/.textFields["email_textfield"]/*[[".otherElements[\"email_view\"].textFields[\"email_textfield\"]",".textFields[\"email_textfield\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["verify_email_button"]/*[[".otherElements[\"email_view\"]",".buttons[\"Prosseguir\"]",".buttons[\"verify_email_button\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        
    }
    
    

    func test2()  {
        let app = XCUIApplication()
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element.swipeLeft()
        
        element.children(matching: .other).element.swipeLeft()
        app/*@START_MENU_TOKEN@*/.buttons["page_number_3_button"]/*[[".buttons[\"Acessar\"]",".buttons[\"page_number_3_button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.textFields["email_textfield"]/*[[".otherElements[\"email_view\"].textFields[\"email_textfield\"]",".textFields[\"email_textfield\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["verify_email_button"]/*[[".otherElements[\"email_view\"]",".buttons[\"Prosseguir\"]",".buttons[\"verify_email_button\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
    
}
