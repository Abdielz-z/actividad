//
//  LogicaTest.swift
//  piedrapapeltijeraTests
//
//  Created by Abdiel Alejandro Ramírez Barrón on 25/08/22.
//

import XCTest
@testable import piedrapapeltijera

class LogicaTest: XCTestCase {
    let jugada = Logica()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPiedravsPiedra() throws {
        //Given
        let entrada = Juego(valor: 1, compu: 1, p1: 0, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p1", texto: "Empate", p1: 0, p2: 0)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
        
    }
    
    func testPiedravsPapel() throws {
        //Given
        let entrada = Juego(valor: 1, compu: 2, p1: 0, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p2", texto: "Ganador: CPU", p1: 0, p2: 1)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
        
    }
    
    func testPiedravsTijeras() throws {
        //Given
        let entrada = Juego(valor: 1, compu: 3, p1: 0, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p3", texto: "Ganador: Jugador", p1: 1, p2: 0)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
        
    }
    
    func testPapelvsPiedra() throws {
        //Given
        let entrada = Juego(valor: 2, compu: 1, p1: 0, p2: 1)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p1", texto: "Ganador: Jugador", p1: 1, p2: 1)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
        
    }
    
    func testPapelvsPapel() throws {
        //Given
        let entrada = Juego(valor: 2, compu: 2, p1: 3, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p2", texto: "Empate", p1: 3, p2: 0)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
        
    }
    
    func testPapelvsTijeras() throws {
        //Given
        let entrada = Juego(valor: 2, compu: 3, p1: 0, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p3", texto: "Ganador: CPU", p1: 0, p2: 1)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
        
    }
    
    func testTijerasvsPiedra() throws {
        //Given
        let entrada = Juego(valor: 3, compu: 1, p1: 0, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p1", texto: "Ganador: CPU", p1: 0, p2: 1)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
        
    }
    
    func testTijerasvsPapel() throws {
        //Given
        let entrada = Juego(valor: 3, compu: 2, p1: 0, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p2", texto: "Ganador: Jugador", p1: 1, p2: 0)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
        
    }
    
    func testTijerasvsTijeras() throws {
        //Given
        let entrada = Juego(valor: 3, compu: 3, p1: 0, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p3", texto: "Empate", p1: 0, p2: 0)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
        
    }
    
    func testEntradaError1() throws{
        //Given
        let entrada = Juego(valor: 4, compu: 2, p1: 0, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p2", texto: "Esas no existen", p1: 0, p2: 0)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
    }
    
    func testEntradaError2() throws{
        //Given
        let entrada = Juego(valor: 4, compu: 3, p1: 0, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p3", texto: "Esas no existen", p1: 0, p2: 0)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.imagen, ganadorEsperado.imagen)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
    }
    
    func testEntradaError3() throws{
        //Given
        let entrada = Juego(valor: 15, compu: 5, p1: 0, p2: 0)
        
        //When
        let ganador = jugada.Jugada(juego: entrada)
        
        //Then
        let ganadorEsperado = GanadorJuego(imagen: "p3", texto: "Esas no existen", p1: 0, p2: 0)
        XCTAssertEqual(ganador.texto, ganadorEsperado.texto)
        XCTAssertEqual(ganador.p1, ganadorEsperado.p1)
        XCTAssertEqual(ganador.p2, ganadorEsperado.p2)
    }
}
