//
//  GanadorJuego.swift
//  piedrapapeltijera
//
//  Created by Abdiel Alejandro Ramírez Barrón on 24/08/22.
//
///ValueObject para manejar los datos que pertenecen a la clase GanadorJuego
import Foundation
public class GanadorJuego{
    public let imagen : String
    public let texto : String
    public let p1 : Int
    public let p2 : Int
    
    
    /// Inicializador de Objetos de la clase GanadorJuego
    /// - Parameters:
    ///   - imagen: Imagen de la decicion de la computadora
    ///   - texto: Ganador de la partida
    ///   - p1: Puntaje del jugador
    ///   - p2: Puntaje de la computadora
    public init(imagen : String, texto : String, p1 : Int, p2 : Int){
        self.imagen = imagen
        self.texto = texto
        self.p1 = p1
        self.p2 = p2
    }
    
}
