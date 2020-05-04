//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Edward Danilyuk on 5/4/20.
//  Copyright © 2020 Kossak Studios. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var totalPerPerson: String?
    var totalPeople: String?
    var tipAmount: String?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalPerPerson
        settingsLabel.text = "Split between \(totalPeople!) people, with \(tipAmount!) tip."
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
