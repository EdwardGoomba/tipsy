//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Edward Danilyuk on 5/4/20.
//  Copyright © 2020 Kossak Studios. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalPerPerson = "0.0"
    var totalPeople = 2
    var tipAmount = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalPerPerson
        settingsLabel.text = "Split between \(totalPeople) people, with \(tipAmount)% tip."
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
