//
//  GanadorJuego.swift
//  piedrapapeltijera
//
//  Created by Abdiel Alejandro Ramírez Barrón on 24/08/22.
//

import Foundation
public class GanadorJuego{
    public let imagen : String
    public let texto : String
    public let p1 : Int
    public let p2 : Int
    
    
    public init(imagen : String, texto : String, p1 : Int, p2 : Int){
        self.imagen = imagen
        self.texto = texto
        self.p1 = p1
        self.p2 = p2
    }
    
}
