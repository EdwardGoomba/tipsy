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
    var splitNumber = 2.0
    var splitAmount = 0.0
    var totalPerPerson = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        billTextField.endEditing(true)

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
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        splitNumber = sender.value
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billTotal = Double(billTextField.text ?? "0.0")
        let tipAmount = (billTotal! * tipPctSelected)
        let billPlusTip = billTotal! + tipAmount
        
        splitAmount = billPlusTip / splitNumber
        totalPerPerson = String(format: "%.2f", splitAmount)

        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.totalPerPerson = totalPerPerson
            destinationVC.totalPeople = String(format: "%.0f", splitNumber)
            destinationVC.tipAmount = ""
        }
    }
}

