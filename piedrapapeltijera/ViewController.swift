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
        
    }
    @IBAction func paper(_ sender: UIButton) {
    
    }
    @IBAction func sissors(_ sender: UIButton) {
        
    }
    
}

