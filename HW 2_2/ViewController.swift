//
//  ViewController.swift
//  HW 2_2
//
//  Created by Anna Ablogina on 24.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    
    @IBOutlet var yellowLight: UIView!
    
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var nameButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //redLight.alpha = 0.5
        yellowLight.alpha = 0.5
        greenLight.alpha = 0.5
        
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
        
    }

    @IBAction func setNextColor() {
        if redLight.alpha == 1 {
            redLight.alpha = 0.5
            yellowLight.alpha = 1
            nameButton.setTitle("NEXT GREEN", for: .normal)
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
            nameButton.setTitle("NEXT RED", for: .normal)
        } else {
            greenLight.alpha = 0.5
            redLight.alpha = 1
            nameButton.setTitle("NEXT YELLOW", for: .normal)
        }
    }
    
}

