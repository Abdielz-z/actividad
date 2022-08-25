//
//  JuegoTest.swift
//  piedrapapeltijeraTests
//
//  Created by Abdiel Alejandro Ramírez Barrón on 25/08/22.
//

import XCTest
@testable import piedrapapeltijera

class JuegoTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testJuego() throws {
        // Given
        let valor : Int = 3
        let compu : Int = 2
        let p1 : Int = 4
        let p2 : Int = 5
    
        // When
        let jugada = Juego.init(valor : valor, compu : compu, p1 : p1, p2 : p2)
        
        // Then
        XCTAssertEqual(3, jugada.valor)
        XCTAssertEqual(2, jugada.compu)
        XCTAssertEqual(4, jugada.p1)
        XCTAssertEqual(5, jugada.p2)
    }
    
    func testGanador() throws {
        // Given
        let imagen : String = "p1"
        let texto : String = "Empate"
        let p1 : Int = 4
        let p2 : Int = 5
    
        // When
        let jugada = GanadorJuego.init(imagen: imagen, texto: texto, p1: p1, p2: p2)
        
        // Then
        XCTAssertEqual("p1", jugada.imagen)
        XCTAssertEqual("Empate", jugada.texto)
        XCTAssertEqual(4, jugada.p1)
        XCTAssertEqual(5, jugada.p2)
    }

}
