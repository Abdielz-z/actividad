//
//  Juego.swift
//  piedrapapeltijera
//
//  Created by Abdiel Alejandro Ramírez Barrón on 24/08/22.
//
///ValueObject para manejar los datos que pertenecen a la clase Juego
import Foundation
public class Juego{
    public let valor : Int
    public let compu : Int
    public let p1 : Int
    public let p2 : Int
    
    
    /// Inicializador de objetos de la clase Juego
    /// - Parameters:
    ///   - valor: Decicion que escogio el usuario
    ///   - compu: Decicion que escogio la computadora
    ///   - p1: Puntaje del usuario
    ///   - p2: Puntaje de la computadora
    public init(valor : Int, compu : Int, p1 : Int, p2 : Int){
        self.valor = valor
        self.compu = compu
        self.p1 = p1
        self.p2 = p2
    }
    
}
