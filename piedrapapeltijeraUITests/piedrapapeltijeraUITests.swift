//
//  piedrapapeltijeraUITests.swift
//  piedrapapeltijeraUITests
//
//  Created by Abdiel Alejandro Ramírez Barrón on 20/08/22.
//

import XCTest

class piedrapapeltijeraUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testJugadaValidaPiedra() throws {
        let app = XCUIApplication()
        app.launch()
        //When
        
        app.buttons["botonPiedra"].tap()
        
        //Then
        let result = app.staticTexts.element(matching: .any, identifier: "UIGanador").label
        var resultadoPrueba = false
        if (result == "Ganador: Jugador" || result == "Ganador: CPU" || result == "Empate"){
            resultadoPrueba = true
        }
        XCTAssert(resultadoPrueba)
    }
    
    func testJugadaValidaPapel() throws {
        let app = XCUIApplication()
        app.launch()
        //When
        
        app.buttons["botonPapel"].tap()
        
        //Then
        let result = app.staticTexts.element(matching: .any, identifier: "UIGanador").label
        var resultadoPrueba = false
        if (result == "Ganador: Jugador" || result == "Ganador: CPU" || result == "Empate"){
            resultadoPrueba = true
        }
        XCTAssert(resultadoPrueba)
    }
    func testJugadaValidaTijeras() throws {
        let app = XCUIApplication()
        app.launch()
        //When
        
        app.buttons["botonTijeras"].tap()
        
        //Then
        let result = app.staticTexts.element(matching: .any, identifier: "UIGanador").label
        var resultadoPrueba = false
        if (result == "Ganador: Jugador" || result == "Ganador: CPU" || result == "Empate"){
            resultadoPrueba = true
        }
        XCTAssert(resultadoPrueba)
    }
}
