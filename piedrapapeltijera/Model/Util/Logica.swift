//
//  logica.swift
//  piedrapapeltijera
//
//  Created by Abdiel Alejandro Ramírez Barrón on 24/08/22.
//

import Foundation

public class Logica {
    public func Jugada(juego : Juego) -> GanadorJuego{
        var valor : Int = juego.compu
        if (juego.compu == 0 || juego.compu > 3 ){
            valor = Int.random(in: 1..<4)
        }
        let ima = "p\(valor)"
        let diff : Int = juego.valor - valor
        if (diff == 0){
            return GanadorJuego(imagen: ima, texto: "Empate", p1 : juego.p1, p2 : juego.p2)
        } else{
            if (diff == 1 || diff == -2) {
                let p1nuevo : Int = juego.p1 + 1
                return GanadorJuego(imagen: ima, texto: "Ganador: Jugador", p1: p1nuevo, p2: juego.p2)
            } else {
                if (diff == -1 || diff == 2) {
                    let p2nuevo : Int = juego.p1 + 1
                    return GanadorJuego(imagen: ima, texto: "Ganador: CPU", p1: juego.p1, p2: p2nuevo)
                } else {
                    return GanadorJuego(imagen: ima, texto: "Esas no existen", p1 : juego.p1, p2 : juego.p2)
                }
            }
        }
    }

}
