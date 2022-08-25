//
//  ViewController.swift
//  piedrapapeltijera
//
//  Created by Abdiel Alejandro Ramírez Barrón on 20/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var cpu: UIImageView!
    @IBOutlet weak var ganador: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func rock(_ sender: UIButton) {
        
        ganador.text = ""
        if let texto1 = num1.text{
            if !texto1.isEmpty{
                if let texto2 = num2.text{
                    if !texto2.isEmpty{
                        let iniciar = Logica()
                        let fin = iniciar.Jugada(juego: Juego(valor: 1, compu: 0, p1: Int(texto1) ?? 0, p2: Int(texto2) ?? 0))
                        ganador.text = fin.texto
                        cpu.image = UIImage(named: fin.imagen)
                        num1.text = "\(fin.p1)"
                        num2.text = "\(fin.p2)"
                    }
                }
            }
        }
         
    }
    @IBAction func paper(_ sender: UIButton) {
        ganador.text = ""
        if let texto1 = num1.text{
            if !texto1.isEmpty{
                if let texto2 = num2.text{
                    if !texto2.isEmpty{
                        let iniciar = Logica()
                        let fin = iniciar.Jugada(juego: Juego(valor: 2, compu: 0, p1: Int(texto1) ?? 0, p2: Int(texto2) ?? 0))
                        ganador.text = fin.texto
                        cpu.image = UIImage(named: fin.imagen)
                        num1.text = "\(fin.p1)"
                        num2.text = "\(fin.p2)"
                    }
                }
            }
        }
    }
    @IBAction func sissors(_ sender: UIButton) {
        ganador.text = ""
        if let texto1 = num1.text{
            if !texto1.isEmpty{
                if let texto2 = num2.text{
                    if !texto2.isEmpty{
                        let iniciar = Logica()
                        let fin = iniciar.Jugada(juego: Juego(valor: 3, compu: 0, p1: Int(texto1) ?? 0, p2: Int(texto2) ?? 0))
                        ganador.text = fin.texto
                        cpu.image = UIImage(named: fin.imagen)
                        num1.text = "\(fin.p1)"
                        num2.text = "\(fin.p2)"
                    }
                }
            }
        }
    }
    
}

