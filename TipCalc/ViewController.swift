//
//  ViewController.swift
//  TipCalc
//
//  Created by Soumya Sharma on 12/19/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBAction func onTap(_ sender: Any)
    {
        print("Hello")
        view.endEditing(true)
    }


    @IBAction func calculateTip(_ sender: Any)
    {
        // Get bill amount
        let bill = Double(billField.text!) ?? 0
        
        
        // Calculate tip and total
        let tipPercentages = [0.1, 0.2, 0.35]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update bill total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

