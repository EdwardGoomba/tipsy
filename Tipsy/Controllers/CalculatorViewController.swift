//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipPctSelected = 0.1
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false

        let tipSelected = sender.currentTitle ?? "10%"
        if tipSelected == "0%" {
            zeroPctButton.isSelected = true
            tipPctSelected = 0.0
        } else if tipSelected == "10%" {
            tenPctButton.isSelected = true
            tipPctSelected = 0.1
        } else {
            twentyPctButton.isSelected = true
            tipPctSelected = 0.2
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tipPctSelected)
    }
}

